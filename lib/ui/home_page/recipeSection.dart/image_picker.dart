import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomImagePicker {
  File? image;
  final _imagePicker = ImagePicker();

  Future<File?> uploadImage(BuildContext context) async {
    File? pickedImage;
    try {
      pickedImage = await showDialog<File?>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Select Image Source'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final pickedImage = await _imagePicker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedImage != null) {
                      image = File(pickedImage.path);
                    }
                    Navigator.pop(context, image);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.orange,
                    ),
                  ),
                  child: const Text('Pick from Gallery'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final pickedImage = await _imagePicker.pickImage(
                      source: ImageSource.camera,
                    );
                    if (pickedImage != null) {
                      image = File(pickedImage.path);
                    }
                    Navigator.pop(context, image);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.orange,
                    ),
                  ),
                  child: Text('Pick from Camera'),
                ),
              ],
            ),
          );
        },
      );
    } catch (e) {
      print("Error picking image: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking image: $e'),
          duration: Duration(seconds: 1),
        ),
      );
    }
    return pickedImage;
  }
}
