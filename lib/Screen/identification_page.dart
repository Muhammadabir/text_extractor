import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class IdentificationPage extends StatefulWidget {
  final String? path;
  const IdentificationPage({Key? key, this.path}) : super(key:key);

  @override
  State<IdentificationPage> createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {
  bool _isBusy = false;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final InputImage inputImage = InputImage.fromFilePath(widget.path!);
    processImage(inputImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Identified Page")),

      body: _isBusy == true? const Center(
        child: CircularProgressIndicator(),
      ) : Container(
            padding: const EdgeInsets.all(21),
            child: TextFormField(
              maxLines: MediaQuery.of(context).size.height.toInt(),
              controller: controller,
              decoration:
                const InputDecoration(hintText: "Extracting the Name of the Product here."),
        ),
      )
    );
  }

  void processImage(InputImage image) async{
    final textIdentifier = TextRecognizer(script: TextRecognitionScript.latin);
    setState(() {
      _isBusy = true;
    });

    log(image.filePath!);
    final RecognizedText extractedText = await textIdentifier.processImage(image);

    controller.text = extractedText.text;

    setState(() {
      _isBusy = false;
    });

  }
}