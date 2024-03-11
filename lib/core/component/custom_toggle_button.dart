import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_manager.dart';
import 'custom_text_widget.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton({
    super.key,
    required this.productType,
    required this.buttonColor,
    required this.titleColor,
    required this.border,
    required this.onTap,
    required this.radius,
    this.textSize =13,
    this.textWeight=FontWeight.w600, this.showIcon =false,
  });
  final String productType;
  final Color buttonColor;
  final Color titleColor;
  final BoxBorder border;
  final Function onTap;
  final BorderRadiusGeometry radius;
  final double textSize;
  final FontWeight? textWeight;
  final bool showIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: radius, border: border),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextWidget(
                title: productType,
                fontSize: textSize,
                fontWeight: textWeight,
                color: titleColor,
              ),
              const SizedBox(width: 1,),
              Visibility(
                  visible:showIcon ,
                  child: SvgPicture.asset(AssetsManager.rightSign,))
            ],
          ),
        ),
      ),
    );
  }
}