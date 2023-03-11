// Displays a list of all entries in the database
// Also contains floating action button to add new entry

import 'package:flutter/material.dart';
import 'package:wasteagram/screens/addEntry.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

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
    _image = File(pickedFile!.path);
    setState(() {
      Navigator.of(context).pushNamed(AddEntry.routeName, arguments: _image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasteagram'),
        centerTitle: true,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}