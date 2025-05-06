import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerHelper {
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image from the gallery or camera
  Future<File?> pickImage(BuildContext context) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: await _selectImageSource(context),
      imageQuality: 85,
    );

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  // Helper function to choose between Camera or Gallery
  Future<ImageSource> _selectImageSource(BuildContext context) async {
    return await showDialog<ImageSource>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Select Image Source"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, ImageSource.camera),
                  child: Text("Camera"),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, ImageSource.gallery),
                  child: Text("Gallery"),
                ),
              ],
            );
          },
        ) ??
        ImageSource.gallery; // Default if no selection
  }
}
