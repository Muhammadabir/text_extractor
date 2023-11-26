import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void imagePickerModel(BuildContext context) {
  showModalBottomSheet(
      context: context, builder: (context) {
        return Container(
          padding: const EdgeInsets.all(21),
          height: 218,
          child: Column(
            children: [
              Card(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Camera",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                ),
              ),
            ],
          ),

        );

  });//lBottomSheet();

}