import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class DialogServices
{
  static Future<void>imagePickerDialog({
    required BuildContext context,
    required Function cameraFct,
    required Function galleryFct,
    required Function removeFct,


  })async{
    await showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        title: const Center(
          child: CustomTextWidget(title: 'Choose option',color: AppColors.orderNumberColor,),
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListBody(
              children: [
                TextButton.icon(
                    onPressed: (){
                      cameraFct();
                      if(Navigator.canPop(context)){
                        Navigator.pop(context);
                      }
                    },
                    icon: const Icon(Icons.camera_alt_outlined),
                    label: const CustomTextWidget(title: 'Camera',color: AppColors.tealColor,)
                ),
                TextButton.icon(
                    onPressed: (){
                      galleryFct();
                      if(Navigator.canPop(context)){
                        Navigator.pop(context);
                      }
                    },
                    icon: const Icon(Icons.image),
                    label: const CustomTextWidget(title: 'Gallery',color: AppColors.tealColor,)
                ),

              ],
            ),
          ),
        ),
      );
    });
  }
}