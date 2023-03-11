// When tapped floating action button navigates to addEntry screen
// Screen should prompt for photo and number of items and record the current location when upload button is tapped
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:wasteagram/widgets/entryForm.dart';

class AddEntry extends StatelessWidget {
  const AddEntry({super.key});

  static const routeName = 'addEntry';

  @override
  Widget build(BuildContext context) {
    final File recievedImage = ModalRoute.of(context)!.settings.arguments as File;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Entry'),
        centerTitle: true,
      ),
      body: EntryForm(recievedImage: recievedImage));
  }
}