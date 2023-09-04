import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/style/add_note.dart';

import 'app_style.dart';
import 'edit_note.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final ref = FirebaseFirestore.instance.collection('KeepNotes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Complain Notes"),
        centerTitle: true,
        backgroundColor: AppStyle.mainColor,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: snapshot.hasData ? snapshot.data!.docs.length : 0,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditNote(
                              docToEdit: snapshot.data!.docs[index],
                            ),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Card(
                        margin: EdgeInsets.all(8.0),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        color: Colors.yellow[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              snapshot.data!.docs[index]['title'],
                              style: AppStyle.mainTitle,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              snapshot.data!.docs[index]['content'],
                              style: AppStyle.mainContent,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Add_Note(),
              ));
        },
        label: Text("Add Complain"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
