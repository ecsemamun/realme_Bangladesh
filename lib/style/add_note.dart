import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Add_Note extends StatefulWidget {
  const Add_Note({Key? key}) : super(key: key);

  @override
  State<Add_Note> createState() => _Add_NoteState();
}

class _Add_NoteState extends State<Add_Note> {

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  CollectionReference ref = FirebaseFirestore.instance.collection("KeepNotes");
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Fluttertoast.showToast(msg: 'Complain Notes Save Successfully');
              ref.add({
                'title': title.text,
                'content': content.text,
              }).whenComplete(() => Navigator.pop(context));
            },
            child: Text('Save', style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextFormField(
                  controller: title,
                  decoration: InputDecoration(hintText: "Enter your Title here"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                    controller: content,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(hintText: "Enter your Content"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
