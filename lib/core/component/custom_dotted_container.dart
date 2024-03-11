import 'package:dotted_border/dotted_border.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDottedCameraContainer extends StatelessWidget {
  const CustomDottedCameraContainer({super.key, required this.image, this.onTap, this.color, this.heightSize, this.widthSize,});
  final String image;
  final Function()? onTap;
  final Color?color;
  final double? heightSize;
  final double? widthSize;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
            height:heightSize??120,
            width:widthSize?? 120,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,

            ),
            child: DottedBorder(
              color: Colors.white,
              strokeWidth: 2,
              strokeCap: StrokeCap.round,
              dashPattern: [1, 0],
              borderType: BorderType.Circle,
              radius: const Radius.circular(8),
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: GestureDetector(
                    onTap:onTap,
                    child: Center(
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(image,height: 60,color: AppColors.lightTitleColor,)),
                    ),
                  )),
            )
        ),
        const SizedBox(height: 1,),

      ],
    );
  }
}
