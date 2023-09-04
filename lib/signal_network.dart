import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class SignalNetwork extends StatefulWidget {
  const SignalNetwork({Key? key}) : super(key: key);

  @override
  State<SignalNetwork> createState() => _SignalNetworkState();
}

class _SignalNetworkState extends State<SignalNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Signal, Network, Phone call"),
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
                title: "If your realme phone has No Service or poor signal",
                content:
                    "1.Check your location and make sure that you're in an area within operator’s network coverage, otherwise your phone’s network and communication signal reception will be affected or interrupted.\n 2.Remove your phone’s third-party protective case if there is one, for that might affect the reception of signal. \n 3.Check phone settings:\n Check if your SIM card is enabled.\n Adjust [Preferred network type] to [4G/3G/2G (Auto)].\n If there is a VPN connection, disconnect it.\n Go to [Settings] > [Dual SIM and mobile network] or [Dual SIM & Cellular] > [SIM card info] > [Access point name], reset APN to default settings.\n 4.Take out the SIM card, check if it is damaged, clean the chip and put the card back in, or try another SIM card on your phone to see if you fixed the issue.\n 5.Restart or force restart your phone.\n 6.Update to the latest version of system.\n 7.Back up and transfer the data first, then reset to its initial state and settings.\n 8.Contact your operator to check if caused by operator’s issues.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "If you cannot use Mobile data network or have slow mobile data speed",
                content:
                    "1.Check your location and try in other places.When locate in signal dead zones, you might hear noises during phone calls.Consult with your network operator for the network issues.\n 2. If the voice sounds normal when on speaker, check your receiver instead. If you still can't hear clearly, then your phone system or network operator could be the issue.\n 3.The receiver won't work properly if it's blocked or dirty. Clean the receiver with a clean and soft-bristled brush or cotton bud.\n 4.Remove the phone case or screen protector that might block the receiver, then test again.\n 5.Check the connected accessories, and try the headset on other phones and see if it works properly. \n 6.Restart the phone and update ColorOS version.\n 7.If you cannot hear a specific person’s voice clearly, it might be his/her phone’s issue.",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title:
                    "If you cannot use Mobile data network or have slow mobile data speed",
                content:
                    "1.Check your location and try in other places.When locate in signal dead zones, you might hear noises during phone calls.Consult with your network operator for the network issues.\n 2. If the voice sounds normal when on speaker, check your receiver instead. If you still can't hear clearly, then your phone system or network operator could be the issue.\n 3.The receiver won't work properly if it's blocked or dirty. Clean the receiver with a clean and soft-bristled brush or cotton bud.\n 4.Remove the phone case or screen protector that might block the receiver, then test again.\n 5.Check the connected accessories, and try the headset on other phones and see if it works properly. \n 6.Restart the phone and update ColorOS version.\n 7.If you cannot hear a specific person’s voice clearly, it might be his/her phone’s issue.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
