import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/raj_esc.dart';

import 'Bogura_ESC.dart';
import 'pabna_esc.dart';


class Rajshahi_Division extends StatefulWidget {
  const Rajshahi_Division({Key? key}) : super(key: key);

  @override
  State<Rajshahi_Division> createState() => _Rajshahi_DivisionState();
}

class _Rajshahi_DivisionState extends State<Rajshahi_Division> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Rajshahi Division"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Raj_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/rajshahi.png",
                      height: 115.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Rajshahi ESC",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pabna_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/pabna.png",
                      height: 115.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Pabna ESC",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Bogura_ESC()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.asset("assets/bogura.png",
                      height: 115.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),

                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Bogura ESC",
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
