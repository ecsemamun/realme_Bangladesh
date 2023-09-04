import 'dart:developer';
import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'My_Login.dart';
import 'Sign_Up_Services.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  TextEditingController userConfirmPassController = TextEditingController();

  User? currentUser = FirebaseAuth.instance.currentUser;

  final _formKey = GlobalKey<FormState>();

  bool isShowPassword = false;

  passwordVisibility() {
    setState(() {
      isShowPassword = true;
    });
    Future.delayed(Duration(seconds: 4)).then((value) {
      setState(() {
        isShowPassword = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 5),
              child: Text(
                'একাউন্ট\nতৈরি করুন !',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              height: 230,
              width: 110,
              child: Image.asset("assets/mrealme.png"),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            FadeInLeft(
                              duration: Duration(milliseconds: 1800),
                              child: TextFormField(
                                controller: userNameController,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter your Name";
                                  } else if (value!.length < 7) {
                                    return "Name must be 7 Character";
                                  }
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Please Enter your Name",
                                    prefixIcon: Icon(Icons.account_circle),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeInRight(
                              duration: Duration(milliseconds: 1800),
                              child: TextFormField(
                                controller: userPhoneController,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Your Mobile Number";
                                  } else if (value!.length < 10) {
                                    return "Mobile Number must be 10 Character";
                                  }
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Mobile Number",
                                    prefixIcon: Icon(Icons.numbers),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeInLeft(
                              duration: Duration(milliseconds: 1800),
                              child: TextFormField(
                                controller: userEmailController,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter your Email Address";
                                  } else if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return 'Wrong Email Id Provide';
                                  }
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Email",
                                    prefixIcon: Icon(Icons.email),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeInRight(
                              duration: Duration(milliseconds: 1800),
                              child: TextFormField(
                                controller: userPassController,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Your Password";
                                  } else if (value!.length < 6) {
                                    return "Password must be 6 Character";
                                  }
                                },
                                obscureText: !isShowPassword,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Password",
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        passwordVisibility();
                                      },
                                      icon: isShowPassword
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeInLeft(
                              duration: Duration(milliseconds: 1800),
                              child: TextFormField(
                                controller: userConfirmPassController,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter your Confirm Password";
                                  } else if (value!.length < 6) {
                                    return "Password Must Be A 10 Character Or Above";
                                  }
                                  if (userPassController.text !=
                                      userConfirmPassController.text) {
                                    return "Confirm Password does not match";
                                  }
                                },
                                obscureText: !isShowPassword,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: "Confirm-Password",
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        passwordVisibility();
                                      },
                                      icon: isShowPassword
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (_formKey.currentState!
                                            .validate()) {}
                                        var userName =
                                        userNameController.text.trim();
                                        var userPhone =
                                        userPhoneController.text.trim();
                                        var userEmail =
                                        userEmailController.text.trim();
                                        var userPassword =
                                        userPassController.text.trim();
                                        var userConfirmPass =
                                        userConfirmPassController.text
                                            .trim();
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                            email: userEmail,
                                            password: userPassword)
                                            .then((value) => {
                                          log("User Created"),
                                          signUpUser(
                                            userName,
                                            userPhone,
                                            userEmail,
                                            userPassword,
                                            userConfirmPass,
                                          ),
                                        });

                                        Fluttertoast.showToast(msg: 'Signup Successfully');
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                  style: ButtonStyle(),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
