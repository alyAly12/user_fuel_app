import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_text_widget.dart';


class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton(
      {super.key,
        required this.onPressed,
        required this.color,
        required this.title,
        required this.showIcon,
        this.buttonHeight =50, this.textSize =16, this.textColor =Colors.white, this.textWeight});
  final void Function() onPressed;
  final Color color;
  final String title;
  final bool showIcon;
  final double? buttonHeight;
  final double?textSize;
  final Color?textColor;
  final FontWeight? textWeight;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: SizedBox(
        width: size.width,
        height: buttonHeight??60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.deepRed,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  title: title,
                  fontSize:textSize??16,
                  fontWeight:textWeight?? FontWeight.w300,
                  color: textColor,
                ),
                Visibility(
                    visible: showIcon,
                    child: const Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 20,
                    ))
              ],
            )),
      ),
    );
  }
}
