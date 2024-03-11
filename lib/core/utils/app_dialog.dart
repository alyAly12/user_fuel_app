import 'package:flutter/material.dart';

import '../component/custom_text_widget.dart';
import '../component/subtitle_text_widget.dart';
import 'app_colors.dart';


class DialogService{
  static Future<void>appDialog({required BuildContext context,
    required String title,
    required Function fct,
    bool isError = true
  })async{
    return await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: SizedBox(),
            contentPadding: EdgeInsets.symmetric(vertical:7,horizontal:4),
            title:  Center(child: CustomTextWidget(title: title,fontSize: 13,fontWeight: FontWeight.w500,maxLines: 1,)),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 6,),
                  Visibility(
                    visible: isError,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SubTitleWidget(subTitle: 'Cancel',color: const Color(0xff545e69),fontSize: 13,),
                      )),
                    ),
                  ),
                  SizedBox(width: 4,),
                  TextButton(onPressed: (){
                    fct();
                    Navigator.pop(context);
                  }, child:  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.activeColor
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SubTitleWidget(subTitle: 'Change',color: Colors.white,fontSize: 13,),
                      ))),
                  SizedBox(width: 6,),
                ],
              )
            ],
          );
        });
  }
}