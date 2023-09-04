import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/login-signup/My_Login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';


class Forgot_Password extends StatefulWidget {
  const Forgot_Password({Key? key}) : super(key: key);

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController forgetPasswordController = TextEditingController();

  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }
  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
            (ConnectivityResult result) async{
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );
  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 300.0,
                  child: Lottie.network(
                      "https://assets6.lottiefiles.com/packages/lf20_bnofreve.json"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1800),
                    child: TextFormField(
                      controller: forgetPasswordController,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Email ID";
                        } else if (!RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Wrong Email Address Provide';
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var forgetEmail = forgetPasswordController.text.trim();
                      try {
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: forgetEmail)
                            .then((value) => {
                              print("Email Sent"),
                        Fluttertoast.showToast(msg: 'Please Check your mail inbox or spam folder'),
                              Get.off(()=> const MyLogin()),
                            });
                      } on FirebaseAuthException catch (e) {
                        print("Error $e");
                      }
                    },
                    child: Text("Forgot Password"))
              ],
            ),

          ),
        ),
      ),
    );
  }

  void showDialogBox() => showCupertinoDialog<String>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text('No Internet Connection'),
      content: const Text('Please Check your Internet Connectivity'),
      actions: <Widget>[
        TextButton(
          onPressed: () async{
            Navigator.pop(context, 'Cancel');
            setState(() => isAlertSet = true);
            isDeviceConnected =
            await InternetConnectionChecker().hasConnection;
            if (!isDeviceConnected) {
              showDialogBox();
              setState(() => isAlertSet = true);
            }
          },
          child: const Text('Ok'),

        )
      ],
    ),
  );
}
