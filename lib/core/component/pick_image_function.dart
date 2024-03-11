import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../utils/app_dialog.dart';
import 'custom_dotted_container.dart';
import 'custom_text_widget.dart';

class PickImageFunction extends StatelessWidget {
  const PickImageFunction({super.key, required this.pickedImage, required this.image, this.imagePickerFun, this.removeTheImage, required this.file, required this.title, this.titleColor});
  final XFile? pickedImage;
  final String image;
  final Function()? imagePickerFun;
  final Function()?removeTheImage;
  final String? file;
  final String title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (pickedImage == null) ...[
          CustomDottedCameraContainer(
            color: Colors.grey,
            image: image,
            onTap:imagePickerFun,
          ),]else ...[
          GestureDetector(
            onTap: (){
              DialogService.appDialog(
                  context: context,
                  title: 'Want to Change image',
                  fct: (){
                    removeTheImage!();
                  }
              );
            },
            child: Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.transparent),
              child: ClipOval(
                child: Image.file(
                  File(file!) ,
                  filterQuality: FilterQuality.high,
                  // cacheHeight: 66,
                  // cacheWidth: 50,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),],

      ],
    );
  }
}