import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/Safeguard/safeguard.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'Safeguard_Sold_Out.dart';

class Apply_Safeguard extends StatefulWidget {
  const Apply_Safeguard({super.key});

  @override
  State<Apply_Safeguard> createState() => _Apply_SafeguardState();
}

class _Apply_SafeguardState extends State<Apply_Safeguard> {
  TextEditingController ModelNameController = TextEditingController();
  TextEditingController CustomerNameController = TextEditingController();
  TextEditingController customeraddressController = TextEditingController();
  TextEditingController cusotmerMobileController = TextEditingController();
  TextEditingController CustomerIMEIController = TextEditingController();
  TextEditingController CustomerSaleDateController = TextEditingController();
  TextEditingController CustomerPriceController = TextEditingController();
  TextEditingController RSCIDController = TextEditingController();
  TextEditingController SelectSafeguard = TextEditingController();
  TextEditingController RSCMobileNumber = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Safeguard Services'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: ModelNameController,
                    decoration: InputDecoration(
                        hintText: "Model Name",
                        labelText: "Model Name",
                        prefixIcon: Icon(Icons.mobile_off_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: CustomerNameController,
                    decoration: InputDecoration(
                        hintText: "Customer Name",
                        labelText: "Customer Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: customeraddressController,
                    decoration: InputDecoration(
                        hintText: "Customer Address",
                        labelText: "Customer Address",
                        prefixIcon: Icon(Icons.add),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: cusotmerMobileController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Customer Mobile Number",
                        labelText: "Customer Mobile Number",
                        prefixIcon: Icon(Icons.mobile_friendly),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Name";
                      } else if (value!.length < 7) {
                        return "Name must be 7 Character";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: CustomerIMEIController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "IMEI Number",
                        labelText: "IMEI Number",
                        prefixIcon: Icon(Icons.format_list_numbered),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your IMEI Number";
                      } else if (value!.length < 15) {
                        return "IMEI Number must be 15 Character";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: CustomerPriceController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Sale Price",
                        labelText: "Sale Price",
                        prefixIcon: Icon(Icons.price_change_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Sale Price";
                      }
                        return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: CustomerSaleDateController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Sale Date",
                        labelText: "Sale Date",
                        prefixIcon: Icon(Icons.date_range),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Sale Date";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: SelectSafeguard,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Safeguard Name",
                        labelText: "Safeguard Name",
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Name";
                      } else if (value!.length < 6) {
                        return "Name must be 6 Character";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: RSCIDController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "RSC ID",
                        labelText: "RSC ID",
                        prefixIcon: Icon(Icons.numbers_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: RSCMobileNumber,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "RSC Mobile Number",
                        labelText: "RSC Mobile Number",
                        prefixIcon: Icon(Icons.mobile_off_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your Name";
                      } else if (value!.length < 4) {
                        return "Name must be 4 Character";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                    onPressed: () async {
                      EasyLoading.show();
                      Map<String, dynamic> userOrderMap = {
                        'userId': user?.uid,
                        'ModelName': ModelNameController.text.trim(),
                        'customerName': CustomerNameController.text.trim(),
                        'customerAddress':
                            customeraddressController.text.trim(),
                        'customerMobile': cusotmerMobileController.text.trim(),
                        'PhoneIMEI': CustomerIMEIController.text.trim(),
                        'SalePrice': CustomerPriceController.text.trim(),
                        'SaleDate': CustomerSaleDateController.text.trim(),
                        'RSCID': RSCIDController.text.trim(),
                        'SafeguardName': SelectSafeguard.text.trim(),
                        'RSCMobileNumber': RSCMobileNumber.text.trim(),
                        'createAt': DateTime.now(),
                        'status': "Pending",
                      };
                      await FirebaseFirestore.instance
                          .collection(''
                              'safeguard_order')
                          .doc()
                          .set(userOrderMap);
                      Get.off(() => const Safeguard_Home_Screen());
                      EasyLoading.dismiss();
                      Fluttertoast.showToast(
                          msg: 'Safeguard Data Sent Sucessfully');
                      if(_formKey.currentState!.validate()){
                      }
                    },
                    child: Text('Create Safeguard Order')),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
