// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wasteagram/main.dart';
import '../../../lib/models/wasteEntry.dart';
import 'package:intl/intl.dart';

void main() {
  late WasteEntry wasteEntry;
  late String date;
  late String imageURL;
  late double latitude;
  late double longitude;
  late int quantity;

  setUpAll(() {
    //setup
    date = DateFormat("EEEE, MMMM d, yyyy").format(DateTime.now());
    imageURL = 'https://www.google.com';
    latitude = 100.0;
    longitude = -50.0;
    quantity = 10;
  
    wasteEntry = WasteEntry();
    wasteEntry.date = date;
    wasteEntry.imageURL = imageURL;
    wasteEntry.latitude = latitude;
    wasteEntry.longitude = longitude;
    wasteEntry.quantity = quantity;
  });

  group('Model Tests', () {

      test('Test WasteEntry Model', () {
      
      expect(wasteEntry.date, date);
      expect(wasteEntry.imageURL, imageURL);
      expect(wasteEntry.latitude, latitude);
      expect(wasteEntry.longitude, longitude);
      expect(wasteEntry.quantity, quantity);
    });

    test('Test WasteEntry Model Verifying toString() method', () {

      expect(wasteEntry.toString(), 'Quantity: ${wasteEntry.quantity}, ImageURL: ${wasteEntry.imageURL}, Latitude: ${wasteEntry.latitude}, Longitude: ${wasteEntry.longitude}, Date: ${wasteEntry.date}');
    });

   });
 
  
}
