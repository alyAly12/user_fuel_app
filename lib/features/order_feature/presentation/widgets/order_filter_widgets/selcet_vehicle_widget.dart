import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';

class SelectVehicleWidget extends StatelessWidget {
  const SelectVehicleWidget({super.key, required this.type, required this.onTap, required this.buttonColor, required this.titleColor, required this.border,});
  final String type;
  final Function onTap;
  final Color buttonColor;
  final Color titleColor;
  final BoxBorder border;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(14),
              border: border
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextWidget(title: type,fontSize: 11,fontWeight: FontWeight.w600,color:titleColor,),
              ],
            ),
          ),
        ),
      );
  }
}
