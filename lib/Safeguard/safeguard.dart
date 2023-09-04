import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/Safeguard/safeguard_image.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'about_safeguard.dart';
import 'apply_safeguard.dart';

class Safe_Guard extends StatefulWidget {
  const Safe_Guard({Key? key}) : super(key: key);

  @override
  State<Safe_Guard> createState() => _Safe_GuardState();
}

class _Safe_GuardState extends State<Safe_Guard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Welcome To Safeguard Services"),
        centerTitle: true,
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: <Widget> [
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About_Safeguard()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://lzd-img-global.slatic.net/g/p/f6d688abfdeafe2edc36b6a11a33b6da.jpg_2200x2200q80.jpg_.webp",
                      height: 120.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("About Safeguard",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Apply_Safeguard()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://ae01.alicdn.com/kf/S8c96db40f7064a6c9d3f7ef5319ad684V/Fully-Coverage-case-For-Realme-9-Pro-C25Y-C21y-C25-C25s-Realme-8-Pro-8i-7.jpg_Q90.jpg_.webp",
                      height: 120.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Safeguard Apply",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => Safeguard_Images());
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                   new Image.asset('assets/safeguard.jpeg',
                   height: 120,
                     width: 160,
                   ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Safeguard Photo",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),

        ],

      ),
    );
  }
}
