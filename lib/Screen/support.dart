
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc_collection_point.dart';
import 'package:flutter_animated_splash_screen/support/spare_parts_list.dart';
import 'package:flutter_animated_splash_screen/support/store_address.dart';
import 'package:flutter_animated_splash_screen/support_faq.dart';
import 'package:flutter_animated_splash_screen/support/troubleshotting.dart';
import 'package:flutter_animated_splash_screen/user_guide.dart';
import 'package:flutter_animated_splash_screen/warranty_check.dart';

import '../Safeguard/safeguard.dart';
import '../support/realme_care.dart';
import '../support/services_policy.dart';


class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {

          });
        },
        child: new GridView.count(
          physics: BouncingScrollPhysics(),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WarrantyCheck()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/warranty.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Warranty Check",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Spare_Parts_List()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/sp_price.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Spare Parts Price",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ESC_Info()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/esc.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Service Center",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StoreAddress()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/esc.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Store Address",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => realme_Care()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/care.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("realme Care+",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Safe_Guard()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/warranty.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Safeguard",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Services_Policy()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/service.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Services Policy",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tips_AfterSales()),
                    );
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/faq.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("FAQ",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserGuide()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/user_guide.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("User Guide",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Troubleshotting()),);
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new Image.asset("assets/trouble.png",
                        height: 115.0,
                        width: 115.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 3.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Troubleshooting",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }

}
