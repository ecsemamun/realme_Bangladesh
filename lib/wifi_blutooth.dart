import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';


class WifiBluetooh extends StatefulWidget {
  const WifiBluetooh({Key? key}) : super(key: key);

  @override
  State<WifiBluetooh> createState() => _WifiBluetoohState();
}

class _WifiBluetoohState extends State<WifiBluetooh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Wi-Fi, Bluetooth, Application"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "If your phone doesn't run smoothly or has a delayed reaction",
                content: "1.If you meet the issue when you are using some specific applications,remove the application and download APPs from Google Play store and realme official store rather than other sources.\n 2.Close unused background applications. \n 3.Clear caches and do security scanning.\n 4.Delete the photos, music, messages, videos or other files that are no more needed.\n 5.Go to [Cleanup & accelerate] for optimization. You can also click [Full clean up] to clear memory files and cache junk to further free up storage space in your phone.\n 6.Reduce the use of dynamic wallpapers or small plug-ins with real-time refresh capabilities.\n 7.Update the system to the latest version and restart your phone once a week to clean up broken or damaged caches and prevent APP bugs to make for a smoother using experience.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "If your WIFI have a low speed",
                content: "1. Check the Wi-Fi signal on the status bar. Make sure that you're within router’s range and can receive the signal of sufficient strength.\n 2. When connecting to a public Wi-Fi network, network speed might be slow for there are too many users. Try to connect to other Wi-Fi networks and see if you fixed the problem.\n 3. Clean up the caches and junk files on your phone, and do security scanning.\n 4. If you are a Wi-Fi network administrator, restart the router.\n 5. Check with your operator if there are network failures and limits in your area.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "Learn how to do if phone has water or other liquid damage accidentally",
                content: "Take your phone out of the liquid immediately and turn off the phone at once and remove both the SIM and SD card.Use a tissue or soft cloth to thoroughly adsorb water stains or liquids and gently shake the phone in the opposite direction of liquid inflow so that the liquid can flow out. Blow-dry the phone with a fan or cold air hair dryer, then take your phone, warranty card and proof of purchase to a nearby realme Customer Center for repairs at once.DO NOT blow-dry the phone with a hot air hair dryer to avoid phone firmware damage caused by overheating. Notice Emergency measures can effectively reduce the probability of damage, but there is still a certain risk of water damage caused by the failure of multiple precision electronic components inside the phone. Therefore, send your phone to Service Center for professional repairs as soon as possible.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "If your realme smartphone won't connect to Wi-Fi network",
                content: "1.Make sure that your router is on and you're within range.\n 2.Try the Wi-Fi network on other phones. If other phones fail to connect to this Wi-Fi network, contact your network operator for help.\n 3. Check if you have input the right password of WIFI.If a saved Wi-Fi network cannot be connected, forget this network, then enter the password and connect again.\n 4.Go to [Settings] > [Additional settings] > [Application management] > [All] ＞ [Wi-Fi settings] and clear data and cache. Then try to connect Wi-Fi network again.\n 5.Restart the phone.\n 6.Check and make sure the router is connected to the modem. Restart the router and try to connect to Wi-Fi network again ten minutes later.\n 7.Check and make sure that each cable is connected firmly and not damaged. Try reconnecting again.\n 8.Back up and transfer your data first, then reset your phone to factory settings.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                collapsedIcon: Icon(Icons.add),
                titleBorderRadius: BorderRadius.circular(20),
                expandedIcon: Icon(Icons.minimize),
                title: "If you cannot access Play Store",
                content: "1.Check that you have a good network connection. \n 2.Go to [Settings]> [Additional setting]> [Date&Time] and enable [Set Automatically]. Google Play Services sync with their master servers to send and receive data, to do this your device time and date should be correctly set.\n 3.Go to [Application Management]> [All] > [Download manager], tap on [Enable] to enable the App.\n4.Go to [Application Management]> [All] > [Google Play Store], click [Clear data] & [Clear cache].Also clear data for “Google Services Framework“. \n5.If the issue still persists, try remove and add your Google Account on your device.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If your realme smartphone won't pair to other Bluetooth devices",
                content: "1.Make sure the devices you're trying to pair are within 10 meters.\n 2.Go to [Settings] > [Bluetooth] and turn on [Phone Visibility].\n 3.During the pairing process, both Bluetooth devices will ask to confirm the pairing code. Make sure the code is correct.\n 4.Some devices have smart power management that may turn off Bluetooth if the battery level is too low. If your phone isn't pairing, make sure it and the device you're trying to pair with are fully charged or connected to power.\n 5.Restart your phone, and make sure you have the latest version of system.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If an app you installed unexpectedly quits, stops responding, or won't open",
                content: "1.Go to [Settings] > [Additional Settings] > [Application management] > [Installed] > select the application which doesn’t properly and click [Clear Data] & [Clear Cache].\n2.Reinstall the application",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If you cannot receive notifications or messages of applications",
                content: "1.Make sure that your phone is connected to network.\n 2.Go to [Settings] >[Notification and Status bar] >[Manage notifications], click the application and enable [Allow Notifications].\n 3.Make sure that [Low Power mode], [Airplane mode] and [Quiet Time] or [No disturb mode] are turned off.\n 4. Go to [Settings] > [Battery] > [Energy Saver] > select the application and turn off [Background Freeze], [Abnormal Apps Optimization] and [Doze].\n 5.Click the menu button and slide down the application page until you can a lock icon in the upper corner to allow applications to run in background.\n 6.Go to [Phone Manager] or [Security Center] or [Security] > [Privacy Permissions] > [Startup Manager] and turn on the button to allow the application to start on boot and start in background.\n 7.Check if there are any updates of the application and download the latest version in [Play Store].\n 8.Update system to the latest version.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If the camera won't open, crashes, or shows a black screen",
                content: "1.Restart the phone, and see if you fixed the issue.\n 2.Go to [Settings] > [App Management] and find Camera. Click Camera, and then clear its data and cache.\n 3.Go to [Settings] > [Security] > [Permissions]. Click [Apps], click the third-party camera app you want to use, and then allow it to use camera.\n 4.Update your phone to the latest version.",
              ),

              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If you can't turn on Wi-Fi or Bluetooth on your realme smartphone",
                content: "1.Restart the phone, and make sure you have the latest version .\n 2.Back up all your data first, then reset all system settings and see if you fixed the issue.\n Notice: Do not root the phone yourself. Rooting may cause phone system damage, and you will void the warranty of your phone.\n If the issue persists,take your phone, proof of purchase and warranty card to a nearby realme Service Center for professional assistances.",
              ),
            ],
          ),
        ),
      ),

    );
  }
}

