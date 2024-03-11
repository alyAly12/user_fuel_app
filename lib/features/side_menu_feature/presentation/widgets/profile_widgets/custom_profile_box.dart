import 'package:flutter/material.dart';
import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/component/dash_lined.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';


class CustomProfileBox extends StatelessWidget {
  const CustomProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title: AppStrings.status,fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.lightTitleColor,),
                  const SizedBox(height: 7,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 18),
                    decoration: BoxDecoration(
                        color: AppColors.tealColor,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: CustomTextWidget(title: AppStrings.active,fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10,),
              CustomPaint(
                  painter: DashedLineVerticalPainter(),
                  size: const Size(1, 50)),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(title: AppStrings.partnerName,fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.lightTitleColor,),
                  const SizedBox(height: 12,),
                  const CustomTextWidget(title: 'maysan co.',fontSize: 13,fontWeight: FontWeight.w500,color: AppColors.lightTitleColor,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
