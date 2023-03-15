import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../screens/viewEntry.dart';
import 'components/mediumText.dart';
import 'components/headerText.dart';


class DisplayData extends StatefulWidget {
  const DisplayData({super.key});

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
      if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
        return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var post = snapshot.data!.docs[index];
              return Semantics(
                onTapHint: "View this specific entry",
                label: "Entry in list of food waste entries",
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                        // DISPLAY SINGLE ENTRY HERE
                        Navigator.of(context).pushNamed(ViewEntry.routeName, arguments: post);
                    },
                    child: ListTile(
                        title: MediumText(text: post['date']),
                        trailing: HeaderText(text: post['quantity'].toString())),
                  ),
                ),
              );
            });
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}