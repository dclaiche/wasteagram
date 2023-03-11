import 'package:flutter/material.dart';
import 'dart:io';

import 'package:wasteagram/models/wasteEntry.dart';

class EntryForm extends StatefulWidget {
  final File recievedImage;
  const EntryForm({super.key, required this.recievedImage});

  @override
  State<EntryForm> createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {

  WasteEntry entry = WasteEntry();

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
              Expanded(
                flex: 1,
                child: TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    labelText: "Number of Items",
                    hintText: "Enter number of items",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a number';
                    }
                    return null;
                  },
                  onSaved: (newValue) => (entry.quantity = int.parse(newValue!)),
                )),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(
                    color: Colors.blue,
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
                )),
            ]),
        );
  }
}