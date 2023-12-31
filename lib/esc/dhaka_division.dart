import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/Mirpur_ESC.dart';
import 'package:flutter_animated_splash_screen/esc/Uttora_ESC.dart';

import 'Gazipur_ESC.dart';
import 'N.Gong_ESC.dart';
import 'Old_Dhaka.dart';
import 'Tangail_ESC.dart';
import 'bc.dart';


class Dhaka_Division extends StatefulWidget {
  const Dhaka_Division({Key? key}) : super(key: key);

  @override
  State<Dhaka_Division> createState() => _Dhaka_DivisionState();
}

class _Dhaka_DivisionState extends State<Dhaka_Division> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Dhaka Division"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Boshundara_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/esc/bc.png",
                      height: 115.0,
                      width: 115.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Boshundara ESC",
                        style: TextStyle(
                          fontSize: 18.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Uttora_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/esc/uttora.png",
                      height: 115.0,
                      width: 115.0,
                      fit: BoxFit.cover,
                    ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Uttora ESC",
                        style: TextStyle(
                          fontSize: 20.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Mirpur_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://firebasestorage.googleapis.com/v0/b/realme-f185d.appspot.com/o/ESC_Logo%2Fmirpur.png?alt=media&token=8aa1163e-a78a-4e6b-b397-1c570ac37d09",
                      height: 115.0,
                      width: 135.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Mirpur ESC",
                        style: TextStyle(
                          fontSize: 20.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Gazipur_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://firebasestorage.googleapis.com/v0/b/realme-f185d.appspot.com/o/ESC_Logo%2Fgazipur.png?alt=media&token=b009980a-a568-4da7-9f54-e860480eeeb4",
                      height: 115.0,
                      width: 140.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Gazipur ESC",
                        style: TextStyle(
                          fontSize: 20.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Old_Dhaka()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://firebasestorage.googleapis.com/v0/b/realme-f185d.appspot.com/o/ESC_Logo%2Fodk.png?alt=media&token=5f8f81ed-8ac7-467f-b9c2-8d509dbb858a",
                      height: 115.0,
                      width: 135.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Old Dhaka",
                        style: TextStyle(
                          fontSize: 20.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> N_Gong_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://firebasestorage.googleapis.com/v0/b/realme-f185d.appspot.com/o/ESC_Logo%2Fn.gong.png?alt=media&token=31acc3bf-37d0-478e-958a-461e0c563b90",
                      height: 115.0,
                      width: 135.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Narayangonj",
                        style: TextStyle(
                          fontSize: 18.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Tangail_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://logos.flamingtext.com/City-Logos/Tangail-Amped-Logo.png",
                      height: 115.0,
                      width: 145.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Tangail ESC",
                        style: TextStyle(
                          fontSize: 18.0,
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
