import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/all_mobile/C30s.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c11_2021.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c21y.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c25s.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c25y.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c30.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c31.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c35.dart';
import 'package:flutter_animated_splash_screen/all_mobile/gt_master.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../all_mobile/C51.dart';
import '../all_mobile/c33.dart';
import '../all_mobile/c53.dart';
import '../all_mobile/gt_neo2.dart';
import '../all_mobile/realme 9_pro.dart';
import '../all_mobile/realme_5i.dart';
import '../all_mobile/realme_6.dart';
import '../all_mobile/realme_6i.dart';
import '../all_mobile/realme_7_pro.dart';
import '../all_mobile/realme_7i.dart';
import '../all_mobile/realme_8.dart';
import '../all_mobile/realme_8_5G.dart';
import '../all_mobile/realme_8_pro.dart';
import '../all_mobile/realme_9_pro_plus.dart';
import '../all_mobile/realme_C55.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                      MaterialPageRoute(builder: (context) => C51()),
                    );
                    Fluttertoast.showToast(msg: 'realme C51');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20230902/1693646995143628445f872c94ad48070ca283ff604a2.png.webp",
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
                                  text: 'Tk.15,999 +VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme C51',
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
                      MaterialPageRoute(builder: (context) => C53()),
                    );
                    Fluttertoast.showToast(msg: 'realme C53');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20230723/1690084669095d6275a38f0ae45ee998890c50505888d.webp.webp",
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
                                  text: 'Tk.17,999 +VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme C53',
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
                      MaterialPageRoute(builder: (context) => C30s()),
                    );
                    Fluttertoast.showToast(msg: 'realme C30s');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20230612/1686554026038a1f6e19e99bf49229085a143d5effa9b.png.webp",
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
                                  text: 'Tk.12,999 +VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme C30s',
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
                      MaterialPageRoute(builder: (context) => C55_realme()),
                    );
                    Fluttertoast.showToast(msg: 'realme C55');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20230402/1680440489496.png.webp",
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
                                  text: 'Tk.18,999/22,999 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '               realme C55',
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
                      MaterialPageRoute(builder: (context) => GtNeo2()),
                    );
                    Fluttertoast.showToast(msg: 'realme GT Neo2');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20211109/1636422747573.png.webp",
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
                                  text: 'Tk.34,990 +VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme GT Neo2',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GtMaster()));
                    Fluttertoast.showToast(msg: 'realme GT Master Edition');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210922/1632290975239.png.webp",
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
                                text: 'Tk.34,990 +VAT Applicable\n',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme GT Master Edition',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ])),
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
                    borderRadius: new BorderRadius.circular(20.0)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => C33()),
                    );
                    Fluttertoast.showToast(msg: 'realme C33');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20221108/1667889776216.png.webp",
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
                                  text: 'Tk.12,999/14,999 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '              realme C33',
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
                      MaterialPageRoute(builder: (context) => C30()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20221017/1665997307773.png.webp",
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
                                  text: 'Tk.9,999 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '             realme C30',
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
                      MaterialPageRoute(builder: (context) => C35()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220516/1652683934168.png.webp",
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
                                  text: 'Tk.16,999/18,999 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '              realme C35',
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
                      MaterialPageRoute(builder: (context) => C31()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220411/1649667806261.png.webp",
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
                                  text: 'Tk.14,999+VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '             realme C31',
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
                      MaterialPageRoute(builder: (context) => C25Y()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20211109/1636422771686.png.webp",
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
                                  text: 'Tk.14,499 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '        realme C25Y',
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
                      MaterialPageRoute(builder: (context) => C21Y()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210922/1632290826817.png.webp",
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
                                  text: 'Tk.12,990/13,990 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme C21Y',
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
                      MaterialPageRoute(builder: (context) => C11_2021()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210922/1632290767705.png.webp",
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
                                  text: 'Tk.10,499/12,499 + VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme C11 2021',
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
                      MaterialPageRoute(builder: (context) => C25s()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210625/1624613408503.png.webp",
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
                                  text: 'Tk.16,490 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme C25s',
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
                      MaterialPageRoute(
                          builder: (context) => realme_9_pro_plus()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220720/1658308516649.png.webp",
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
                                  text: 'Tk.34,999 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 9 Pro+',
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
                      MaterialPageRoute(builder: (context) => realme_9_Pro()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220721/1658403884507.png.webp",
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
                                  text: 'Tk.27,999 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 9 Pro',
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
                      MaterialPageRoute(builder: (context) => realme_9_Pro()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220516/1652689615382.png.webp",
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
                                  text: 'Tk.24,999 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '                 realme 9',
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
                      MaterialPageRoute(builder: (context) => realme_9_Pro()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20220210/1644477319980.png.webp",
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
                                  text: 'Tk.20,999 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '               realme 9i',
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
                      MaterialPageRoute(builder: (context) => realme_8_5G()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 8 5G This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210709/1625799146172.png.webp",
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
                                  text: 'Tk.20,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '              realme 8 5G',
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
                      MaterialPageRoute(builder: (context) => realme_8()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 8 This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210426/1619404146906.png.webp",
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
                                  text: 'Tk.25,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '              realme 8',
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
                      MaterialPageRoute(builder: (context) => realme_8_Pro()),
                    );

                    Fluttertoast.showToast(
                        msg: 'realme 8 Pro This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20210402/1617336522575.png.webp",
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
                                  text: 'Tk.27,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 8 Pro',
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
                      MaterialPageRoute(builder: (context) => realme_7i()),
                    );

                    Fluttertoast.showToast(
                        msg: 'realme 7i This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20201014/1602671981220.jpg.webp",
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
                                  text: 'Tk.17,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '               realme 7i',
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
                      MaterialPageRoute(builder: (context) => realme_7_Pro()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 7 Pro This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20201014/1602671923340.jpg.webp",
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
                                  text: 'Tk.27,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 7 Pro',
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
                      MaterialPageRoute(builder: (context) => realme_6()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 6 This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20201014/1602672476088.jpg.webp",
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
                                  text: 'Tk.16,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '             realme 6',
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
                      MaterialPageRoute(builder: (context) => realme_6i()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 6i This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20201014/1602672479957.jpg.webp",
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
                                  text: 'Tk.16,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 6i',
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
                      MaterialPageRoute(builder: (context) => realme_5i()),
                    );
                    Fluttertoast.showToast(
                        msg: 'realme 5i This Product is out of market');
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.network(
                        "https://image01.realme.net/general/20201014/1602672532909.jpg.webp",
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
                                  text: 'Tk.12,990 VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '            realme 5i',
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
          ],
        ),
      ),
    );
  }

}
