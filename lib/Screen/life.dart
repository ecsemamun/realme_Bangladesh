import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/band_2.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/cooling_bag_clip.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/electric_toothbrush.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/mobile_game_finger.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/smart_cam.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/smart_scale.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/vaccum_cleaner.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/watch_2.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/watch_2_pro.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async{
          setState(() {

          });
        },
        child: new GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisCount: 2,
          children: <Widget>[
            new Container(
              child: new Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => watch_two_pro()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Watch 2 Pro Price 6,559Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650871908261.png.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '          Tk.6,559\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: ' realme Watch 2 Pro',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => realme_watch_two()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Watch 2 Price 4,699Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650871938176.png.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '         Tk.4,699\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: '     realme Watch 2',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => realme_band_two()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Band 2 Price 3,849Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650871955962.png.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '         Tk.3,849\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: '     realme Band 2',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => electric_toothbrush()),
                    );
                    Fluttertoast.showToast(
                        msg: 'N1 Sonic Electric Toothbrush Price 1,099Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650871995352.jpg.webp",
                        height: 110.0,
                        width: 110.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '           Tk.1,099\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                              ),
                            ),
                            TextSpan(
                              text: 'Electric Toothbrush',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => realme_smart_scale()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Smart Scale Price 5,049Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650872013707.jpg.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '          Tk.5,049\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                            TextSpan(
                              text: '     realme Smart Scale',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Smart_Cam()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Smart Cam 360 Price 3,399Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650872032063.jpg.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '              Tk.3,399\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                            TextSpan(
                              text: '     realme Smart Cam 360°',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Game_Finger()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Mobile Game Finger Price 3,29Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650872053336.png.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '         Tk.3,29\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                            TextSpan(
                              text: 'Mobile Game Finger Sleeves',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => realme_cooling()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Cooling Back Clip');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650872073459.png.webp",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: 'realme Cooling Back Clip',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ]))),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => realme_vaccum_cleaner()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme Vacuum Cleaner Price 13,999Tk');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220425/1650872085879.png.webp",
                        height: 110.0,
                        width: 110.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '               Tk.13,999\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: 'realme Vacuum Cleaner',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                              ),
                            ),
                          ]))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
