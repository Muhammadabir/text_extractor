import 'package:flutter/material.dart';

void imagePickerModel(BuildContext context, {VoidCallback? onCameraTap, VoidCallback? onUserInputTap}) {
  showModalBottomSheet(
      context: context, builder: (context) {
        return Container(
          padding: const EdgeInsets.all(21),
          height: 218,
          child: Column(
            children: [
              GestureDetector(
                onTap: onCameraTap,
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(16),
                    decoration:  BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(12)),
                    child: const Text("Camera",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              GestureDetector(
                onTap: onUserInputTap,
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(16),
                    decoration:  BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(12)),
                    child: const Text("Write the Name",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                ),
              ),
            ],
          ),

        );

  });//lBottomSheet();

}