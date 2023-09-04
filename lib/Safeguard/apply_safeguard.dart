import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../login-signup/Sign_Up_Services.dart';
import 'package:intl/intl.dart';

class Apply_Safeguard extends StatefulWidget {
  const Apply_Safeguard({Key? key}) : super(key: key);

  @override
  State<Apply_Safeguard> createState() => _Apply_SafeguardState();
}

class _Apply_SafeguardState extends State<Apply_Safeguard> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController userConfirmPassController = TextEditingController();
  TextEditingController safeguard = TextEditingController();
  TextEditingController citiesSelected = TextEditingController();



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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
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
              padding: EdgeInsets.only(left: 35, top: 3),
              child: Text(
                'Welcome To The Safeguard Services\n'
                    'After fill up the form then call to the nearest service center for confirmation...',
                style: TextStyle(color: Colors.white, fontSize: 16),
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
                            TextFormField(
                              controller: userNameController,
                              style: TextStyle(color: Colors.white),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter your Full Name";
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
                                  hintText: "Enter your Full Name",
                                  prefixIcon: Icon(Icons.account_circle),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: userPhoneController,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Your Mobile IMEI Number";
                                } else if (value!.length < 15) {
                                  return "IMEI Number must be 15 Character";
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
                                  hintText: "IMEI Number",
                                  prefixIcon: Icon(Icons.numbers),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // TextFormField(
                            //   controller: userEmailController,
                            //   style: TextStyle(color: Colors.white),
                            //   keyboardType: TextInputType.emailAddress,
                            //   validator: (value) {
                            //     if (value == null || value.isEmpty) {
                            //       return "Select your Phone Model";
                            //     }
                            //   },
                            //   decoration: InputDecoration(
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //         borderSide: BorderSide(
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //         borderSide: BorderSide(
                            //           color: Colors.black,
                            //         ),
                            //       ),
                            //       hintText: "Model",
                            //       prefixIcon: Icon(Icons.model_training),
                            //       hintStyle: TextStyle(color: Colors.white),
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //       )),
                            // ),
                            DropDownField(
                              controller: citiesSelected,
                              hintText: "Select your Model",
                              enabled: true,
                              items: cities,
                              onValueChanged: (value) {
                                setState(() {
                                  selectCity = value;
                                });
                              },
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: date,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Select your Sales Date";
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
                                  hintText: "Select Sales Date",
                                  prefixIcon: Icon(Icons.calendar_month),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              readOnly: true,
                              onTap: () async{
                                DateTime? pickedate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1971),
                                    lastDate: DateTime(2071),
                                );
                                if (pickedate !=null) {
                                  setState(() {
                                    date.text = DateFormat('dd-MM-yyyy').format(pickedate);
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // TextFormField(
                            //   controller: userEmailController,
                            //   style: TextStyle(color: Colors.white),
                            //   keyboardType: TextInputType.emailAddress,
                            //   validator: (value) {
                            //     if (value == null || value.isEmpty) {
                            //       return "Select your Services";
                            //     }
                            //   },
                            //   decoration: InputDecoration(
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //         borderSide: BorderSide(
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //         borderSide: BorderSide(
                            //           color: Colors.black,
                            //         ),
                            //       ),
                            //       hintText: "Warranty Service Type:",
                            //       prefixIcon: Icon(Icons.tire_repair_outlined),
                            //       hintStyle: TextStyle(color: Colors.white),
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10),
                            //       )),
                            // ),
                        SizedBox(
                          height: 10,
                        ),
                            DropDownField(
                              controller: safeguard,
                              hintText: "Select your Warranty Services",
                              enabled: true,
                              items: warranty,
                              onValueChanged: (value) {
                                setState(() {
                                  selectCity = value;
                                });
                              },
                            ),


                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: userEmailController,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Input your Safeguard Price";
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
                                  hintText: "Price",
                                  prefixIcon: Icon(Icons.tire_repair_outlined),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: userEmailController,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter your remarks";
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
                                  hintText: "Remarks",
                                  prefixIcon: Icon(Icons.tire_repair_outlined),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: userEmailController,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter your Email Address";
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
                                  hintText: "Upload Images",
                                  prefixIcon: Icon(Icons.tire_repair_outlined),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Submit',
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

                                        Fluttertoast.showToast(msg: 'Data Upload Successfully');
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
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

String selectCity = "";
List<String> cities = [
  "realme C33(RMX3624BD)",
  "realme C30(RMX3581BD)",
  "realme 9 Pro+ 5G(RMX3393BD)",
  "realme 9 Pro 5G(RMX3472BD)",
  "narzo 50A Prime(RMX3516BD)",
  "realme C35(RMX3511BD)",
  "realme 9(RMX3521BD)",
  "realme C31(RMX3501BD)",
  "narzo 50(RMX3286BD)",
  "realme 9i(RMX3491BD)",
  "realme narzo 50i(RMX3235BD)",
  "realme GT Neo 2(RMX3370BD)",
  "realme C25Y(RMX3268BD)",
  "realme C21Y(RMX3261BD)",
  "realme C11 2021(RMX3231BD)",
  "realme GT Master(RMX3363BD)",
  "realme Narzo 30(RMX2156BD)",
  "realme 8 5G(RMX3241BD)",
  "realme C25s(RMX3195BD)",
  "realme 8(RMX3085BD)",
  "realme C25(RMX3191BD)",
  "realme C21(RMX3201BD)",
  "realme C20(RMX3063BD)",
  "realme 8 Pro(RMX3081BD)",
  "realme Narzo 30A(RMX3171BD)",
  "realme Narzo 20(RMX2193BD)",
  "realme C15(RMX2195BD)",
  "realme 7i(RMX2103BD)",
  "realme 7 Pro(RMX2170BD)",
  "realme C17(RMX2101BD)",
  "realme C12(RMX2189BD)",
  "realme C11(RMX2185BD)",
  "realme 6(RMX2001BD)",
  "realme 6i(RMX2040BD)",
  "realme C3(RMX2020BD)",
  "realme C2(RMX1941BD)",
];


String warrnty_extend = "";
List<String> warranty = [
  "Screen Protection 6 Months",
  "Screen Protection 12 Months",
  "Extended Warranty 6 Months",
  "Extended Warranty 12 Months",
];