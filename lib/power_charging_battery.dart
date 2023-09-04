import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class PowerChargingBattery extends StatefulWidget {
  const PowerChargingBattery({Key? key}) : super(key: key);

  @override
  State<PowerChargingBattery> createState() => _PowerChargingBatteryState();
}

class _PowerChargingBatteryState extends State<PowerChargingBattery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Power, Charging, Battery"),
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
                title: "If your phone won't turn on, or has a black or frozen screen",
                content: "Press and hold both the Power and Volume Up buttons for at least eight seconds to forestart your device."
                    "If you phone don't respond，plug in your phone and let it charge for up to 30 minutes, then try again.If it still doesn't work, take your phone, proof of purchase and warranty card to a nearby realme Authorized Customer Service Center for repairs. It is recommended to follow these steps to keep your phone in good condition:\n*Periodically clear caches and scan viruses in [Security Center] and reboot your device once a week. \n*Uninstall APPs that are unnecessary or have bugs. *Avoid multitasking too much at the same time. Click 'End All' to close apps running in background.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "If your phone turns off by itself",
                content: "If your phone restarts or turns off by itself frequently, check the following steps:\n"
                    "1.If problems occur when an application is in use, uninstall it to see if you fixed the issue.\n "
                    "2.Make sure that the problem is not caused by incorrect operations such as mistakenly touch and press the Power Button. And your phone’s buttons might get stuck by phone case.\n "
                    "3.Your phone might restart or turn off by itself when being used in a very cold or hot environment.\n "
                    "4.Take out the SIM card ,check if it isn’t damaged or degaussing, then put the card back in and see if you fixed the issue.\n "
                    "5.Plug in your phone and let it charge for 30 minutes, then force restart your phone and see if you fixed the issue.\n"
                    "6.Go to [Settings] > [Additional Settings] > [Automatic on/off] and check if your phone is set up for automatic power off.\n "
                    "7.Go to [Security Center] > [Virus scan],scan for viruses, malicious plug-ins or programs and uninstall unsafe or unstable third-party applications.\n "
                    "8.Go to [Settings] > [System updates], detect and update your phone to the latest version of ColorOS.\n "
                    "9.Contact realme Support Team, or take your phone, proof of purchase and warranty card to a nearby realme Service Center for repairs.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: "If your phone won't charge or charges slowly",
                content: "1.Use realme original charging cable and USB adapter.\n "
                    "2.Check your charging cable and USB adapter for signs of damage and make sure firm connections.Use another charging cable and USB adapter and try again.\n "
                    "3.Check the charging temperature. charging at temperatures above 45 °C will degrade battery performance, resulting in slower charging and thus longer charging times.\n "
                    "4.Close background apps and avoid using your phone while charging. If the issue persists, contact realme Support Team, or take your phone,charging accessories, proof of purchase and warranty card to a nearby realme Customer Service Center for professional assistances.",
              ),
            ],
          ),
        ),
      ),

    );
  }
}

