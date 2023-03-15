import 'package:flutter/material.dart';
import 'package:wasteagram/models/wasteEntry.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';

class UploadFormField extends StatelessWidget {
  GlobalKey<FormState> formKey;
  WasteEntry entry;
  Future<String>? imageURL;
  Future<LocationData>? locationData;
  DateTime? now;
  

  UploadFormField({super.key, required this.formKey, required this.entry, required this.imageURL, required this.locationData, required this.now});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      LocationData? location = await locationData;
                      entry.imageURL = await imageURL;
                      await locationData;
                      entry.date = DateFormat("EEEE, MMMM d, yyyy").format(now!);
                      entry.latitude = location?.latitude;
                      entry.longitude = location?.longitude;
                      FirebaseFirestore.instance
                          .collection('posts')
                          .add({
                            'quantity': entry.quantity,
                            'imageURL': entry.imageURL,
                            'latitude': entry.latitude,
                            'longitude': entry.longitude,
                            'date': entry.date,
                          });
                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(
                    color: Colors.deepPurple,
                    child: const ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            color: Colors.white,
                            size: 50,
                            Icons.cloud_upload),
                        ],
                      ),
                  ),
                ));
  }
}