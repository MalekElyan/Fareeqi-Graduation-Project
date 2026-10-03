import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/core/constant/app_colors.dart';

class ImageUploader extends StatefulWidget {
  const ImageUploader({super.key});

  @override
  State<ImageUploader> createState() => ImageUploaderState();
}

class ImageUploaderState extends State<ImageUploader> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 70,
    );

    if (picked != null) {
      setState(() {
        _image = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 118,
              height: 118,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.avatarOutline, width: 4),
              ),
              child: ClipOval(
                child: _image != null
                    ? (kIsWeb
                          ? Image.network(
                              _image!.path,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              File(_image!.path),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ))
                    : Container(
                        width: 100,
                        height: 100,
                        color: AppColors.avatarBackground,
                        child: Icon(
                          Icons.person,
                          size: 42,
                          color: AppColors.primaryGreen,
                        ),
                      ),
              ),
            ),

            Positioned(
              bottom: 4,
              left: 4,
              child: GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.backgroundCard,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        Container(
          width: 54,
          height: 8,
          decoration: BoxDecoration(
            color: AppColors.badgeDoneBorder,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ],
    );
  }
}
