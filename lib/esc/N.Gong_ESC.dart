import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/bc_google_map.dart';
import 'package:url_launcher/url_launcher.dart';

class N_Gong_ESC extends StatefulWidget {
  const N_Gong_ESC({Key? key}) : super(key: key);

  @override
  State<N_Gong_ESC> createState() => _N_Gong_ESCState();
}

class _N_Gong_ESCState extends State<N_Gong_ESC> {
  void launchWhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=&message";
    await canLaunch(url) ? launch(url) : print("Can't open whatsapp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Welcome To Narayongong ESC"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (!await launch('tel:+8801309026462'))
                    throw 'Could not launch';
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: 65,
                    width: 290,
                    alignment: Alignment.center,
                    child: const Text(
                      "Call Service Center Number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  launchWhatsapp(number: "+8801309026462", message: "Hello");
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: 65,
                    width: 290,
                    alignment: Alignment.center,
                    child: const Text(
                      "Chat With Whatsapp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  MapUtils.openMap(23.98902526803417, 90.38091249762067);
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: 65,
                    width: 290,
                    alignment: Alignment.center,
                    child: const Text(
                      "Google Maps Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Card(
                    elevation: 5,
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'realme ESC Uttora',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Service Hours:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "10:00am-07:00pm",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "Holiday: Friday",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Address:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "         Shop No: 711,Level: 07,\n          Fazar Ali Trade Center,\n            Bangobondhu Road,\n ""02 No. Railgate, Narayangonj-1400",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Mobile:+8801309-026462 ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
