import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../../models/wasteEntry.dart';

class itemsFormField extends StatelessWidget {

  WasteEntry entry;

  itemsFormField({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                ));
  }
}