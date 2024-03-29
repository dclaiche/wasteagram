// Displays a list of all entries in the database
// Also contains floating action button to add new entry

import 'package:flutter/material.dart';
import 'package:wasteagram/screens/addEntry.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../widgets/displayData.dart';

class ListEntries extends StatefulWidget {
  const ListEntries({super.key});

  static const routeName = '/';

  @override
  State<ListEntries> createState() => _ListEntriesState();
}

class _ListEntriesState extends State<ListEntries> {

  File? _image;

  void getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    _image = File(pickedFile.path);
    setState(() {
      Navigator.of(context).pushNamed(AddEntry.routeName, arguments: _image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(
          label: "Wasteagram",
          textField: true,
          child: const Text('Wasteagram')),
        centerTitle: true,
      ),
      body: const DisplayData(),
      floatingActionButton: Semantics(
        button: true,
        enabled: true,
        onTapHint: 'Add new entry',
        child: FloatingActionButton(
          onPressed: () {
            getImage();
          },
          child: const Icon(Icons.camera_alt),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}