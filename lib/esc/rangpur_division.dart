import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/rangpur_esc.dart';

import 'dinajpur_esc.dart';



class Rangpur_Division extends StatefulWidget {
  const Rangpur_Division({Key? key}) : super(key: key);

  @override
  State<Rangpur_Division> createState() => _Rangpur_DivisionState();
}

class _Rangpur_DivisionState extends State<Rangpur_Division> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Rangpur Division"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Rangpur_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://logos.flamingtext.com/City-Logos/Rangpur-Amped-Logo.png",
                      height: 115.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Rangpur ESC",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Dinajpur_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/dinajpur.png",
                      height: 115.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Dinajpur ESC",
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
        ],

      ),
    );
  }
}
