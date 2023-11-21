import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'apply_safeguard.dart';

class Safeguard_Home_Screen extends StatefulWidget {
  const Safeguard_Home_Screen({super.key});

  @override
  State<Safeguard_Home_Screen> createState() => _Safeguard_Home_ScreenState();
}

class _Safeguard_Home_ScreenState extends State<Safeguard_Home_Screen> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Checklist"),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => Apply_Safeguard());
            },
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 15.0,
                child: Icon(Icons.add_business),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('safeguard_order')
              .where('userId', isEqualTo: user!.uid)
              .snapshots(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error'),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (snapshot == null) {
              return Center(
                child: Text('Error'),
              );
            }
            if (snapshot != null && snapshot.data != null) {
              return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    String status = snapshot.data!.docs[index]['customerName'];
                    return Card(
                      child: FadeInLeft(
                        duration: Duration(milliseconds: 2000),
                        child: ListTile(
                          title:
                              Text(snapshot.data!.docs[index]['customerName']),
                          subtitle: status == "Pending"
                              ? Text(
                                  snapshot.data!.docs[index]['status'],
                                  style: TextStyle(color: Colors.green),
                                )
                              : Text(
                                  snapshot.data!.docs[index]['status'],
                                  style: TextStyle(color: Colors.red),
                                ),
                          leading: CircleAvatar(
                            child: Text(index.toString()),
                          ),
                          trailing: CircleAvatar(
                            child: Icon(Icons.edit),
                          ),
                        ),
                      ),
                    );
                  });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
