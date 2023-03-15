import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/retrieveLocation.dart';
import 'package:wasteagram/models/wasteEntry.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'components/itemsFormField.dart';
import 'components/uploadFormField.dart';

class EntryForm extends StatefulWidget {
  final File recievedImage;
  const EntryForm({super.key, required this.recievedImage});

  @override
  State<EntryForm> createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {

  WasteEntry entry = WasteEntry();
  Future<LocationData>? locationData;
  Future<String>? imageURL;
  DateTime? now;

  Future<String> getImageURL(DateTime now) async {
    final storageReference = FirebaseStorage.instance.ref().child('images/${DateFormat("EEEE, MMMM d, yyyy").format(now)}');
    final uploadTask = await storageReference.putFile(widget.recievedImage);
    final url = await storageReference.getDownloadURL();
    return url;
  }

  // void getLocation() async {
  //   locationData = await retrieveLocation();
  // }

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    locationData = retrieveLocation();
    imageURL = getImageURL(now!);
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 5,
                child: Image.file(widget.recievedImage)),
                const Flexible(child: FractionallySizedBox(
                  heightFactor: 0.5,
                )),
              itemsFormField(entry: entry),
              UploadFormField(formKey: formKey, entry: entry, imageURL: imageURL, locationData: locationData, now: now),
            ]),
        );
  }
}