import 'package:flutter/material.dart';
import 'package:wasteagram/screens/addEntry.dart';
import 'package:wasteagram/screens/listEntries.dart';
import 'package:wasteagram/screens/viewEntry.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final routes = {
      ListEntries.routeName: (context) => const ListEntries(),
      AddEntry.routeName: (context) => const AddEntry(),
      ViewEntry.routeName: (context) => const ViewEntry(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wasteagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes
    );
  }
}