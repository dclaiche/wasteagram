// When an entry is tapped on listEntries screen, navigates to viewEntry screen for that specific entry
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/viewSingleEntry.dart';

class ViewEntry extends StatelessWidget {
  const ViewEntry({super.key});

  static const routeName = 'viewEntry';

  @override
  Widget build(BuildContext context) {
    final QueryDocumentSnapshot<Map<String, dynamic>> post = ModalRoute.of(context)?.settings.arguments as QueryDocumentSnapshot<Map<String, dynamic>>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasteagram'),
        centerTitle: true,
      ),
      body: Center(
        child: ViewSingleEntry(post: post),
      ));
  }
}