import 'dart:developer';

import 'package:image_picker/image_picker.dart';

Future<String> pickImage({ImageSource? source}) async {
  final picker = ImagePicker();

  String path = '';

  try {
    final getImage = await picker.pickImage(source: source!);
    //in case I want to make another button to get the image from gallery
    if (getImage != null){
      path = getImage.path;
    } else {
      path = '';
    }
  } catch(e) {
    log(e.toString());
  }

  return path;
}