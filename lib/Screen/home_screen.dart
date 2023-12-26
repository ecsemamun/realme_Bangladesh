import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/bottom_navigation/brand.dart';
import 'package:flutter_animated_splash_screen/bottom_navigation/community.dart';
import 'package:flutter_animated_splash_screen/login-signup/My_Login.dart';
import 'package:flutter_animated_splash_screen/bottom_navigation/online_support.dart';
import 'package:flutter_animated_splash_screen/bottom_navigation/privacy_policy.dart';
import 'package:flutter_animated_splash_screen/services_day.dart';
import 'package:flutter_animated_splash_screen/user_guide.dart';
import 'package:flutter_animated_splash_screen/bottom_navigation/warranty_terms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../keep_notes.dart';
import 'mobile.dart' as mobile;
import 'laptop.dart' as laptop;
import 'audio.dart' as audio;
import 'life.dart' as life;
import 'support.dart' as support;

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // getConnectivity();
    controller = new TabController(length: 5, vsync: this);
    super.initState();
  }

  // late StreamSubscription subscription;
  // var isDeviceConnected = false;
  // bool isAlertSet = false;

  // getConnectivity() =>
  //     subscription = Connectivity().onConnectivityChanged.listen(
  //       (ConnectivityResult result) async {
  //         isDeviceConnected = await InternetConnectionChecker().hasConnection;
  //         if (!isDeviceConnected && isAlertSet == false) {
  //           showDialogBox();
  //           setState(() => isAlertSet = true);
  //         }
  //       },
  //     );
  //
  // @override
  // void dispose() {
  //   controller.dispose();
  //   subscription.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "realme Bangladesh",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Services_Day()),
                  );
                },
                icon: Icon(Icons.notification_important_outlined),
                tooltip: "Notification",
              ),
            ],
            backgroundColor: Colors.yellow,
            centerTitle: true,
            bottom: new TabBar(
              controller: controller,
              indicatorWeight: 5.0,
              tabs: <Widget>[
                new Tab(
                  icon: new Icon(Icons.mobile_off_sharp),
                ),
                new Tab(
                  icon: new Icon(Icons.laptop),
                ),
                new Tab(
                  icon: new Icon(Icons.music_note),
                ),
                new Tab(
                  icon: new Icon(Icons.watch),
                ),
                new Tab(
                  icon: new Icon(Icons.support),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnlineSupport()),
              );
            },
            child: Icon(Icons.message),
            tooltip: "After Sales Department",
            backgroundColor: Colors.black87,
            foregroundColor: Colors.yellow,
            elevation: 0,
            // shape: BeveledRectangleBorder(
            //     // borderRadius: BorderRadius.circular(20.0),
            //     // side: BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid)
            //     ),
            // mini: true,
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Brand()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.branding_watermark,
                          color: Colors.white,
                        ),
                        Text(
                          "Brand",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 1.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Community()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.line_axis,
                          color: Colors.white,
                        ),
                        Text(
                          "Community",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 1.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WarrantyTerms()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.miscellaneous_services,
                          color: Colors.white,
                        ),
                        Text(
                          "Warranty",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.privacy_tip,
                          color: Colors.white,
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new mobile.Mobile(),
              new laptop.Laptop(),
              new audio.Audio(),
              new life.Life(),
              new support.Support(),
            ],
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildHeader(context),
                    buildMenuItems(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Really Exit?'),
            content: const Text('Are you sure you want to close the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
              ),
            ],
          );
        });

    return exitApp ?? false;
  }

  // void showDialogBox() => showCupertinoDialog<String>(
  //   context: context,
  //   builder: (BuildContext context) => CupertinoAlertDialog(
  //     title: const Text('No Internet Connection'),
  //     content: const Text('Please Check your Internet Connectivity'),
  //     actions: <Widget>[
  //       TextButton(
  //         onPressed: () async {
  //           Navigator.pop(context, 'Cancel');
  //           setState(() => isAlertSet = true);
  //           isDeviceConnected =
  //           await InternetConnectionChecker().hasConnection;
  //           if (!isDeviceConnected) {
  //             showDialogBox();
  //             setState(() => isAlertSet = true);
  //           }
  //         },
  //         child: const Text('Ok'),
  //       )
  //     ],
  //   ),
  // );
}

Widget buildHeader(BuildContext context) => Container(
      color: Colors.yellow.shade600,
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('assets/img_1.png'),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "realme Bangladesh",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'service.bd@realme.com',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Home_Screen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.note),
            title: const Text('Keep Notes'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Keep_Notes()),
              );
            },
          ),
              ListTile(
                leading: const Icon(Icons.dark_mode_sharp),
                title: const Text('Light Mode'),
                onTap: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark()
                  );
                },
              ),

          // ListTile(
          //   leading: const Icon(Icons.notification_add),
          //   title: const Text('Notifications'),
          //   onTap: () {},
          // ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(Icons.content_copy_sharp),
            title: const Text('User Agreement'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UserGuide()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.safety_check),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PrivacyPolicy()),
              );
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () {},
          // ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Get.off(() => const MyLogin());
            },
          ),
        ],
      ),
    );
