
import 'package:driver_app/core/component/subtitle_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_colors.dart';

class CustomRoundedColumnButton extends StatelessWidget {
  const CustomRoundedColumnButton(
      {super.key,
        required this.color,
        this.onTap,
        required this.image,
        required this.text,
        this.height,
        this.titleColor = AppColors.blackCoat});
  final Color color;
  final void Function()? onTap;
  final String image;
  final String text;
  final double? height;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: height ?? 3,
            child: SvgPicture.asset(image,height: 25,),
          ),
          SizedBox(
            height: 2,
          ),
          SubTitleWidget(
            subTitle: text,
            fontSize: 15,
            color: titleColor,
          )
        ],
      ),
    );
  }
}
