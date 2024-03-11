import 'package:flutter/material.dart';
import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class IssueCarDetail extends StatelessWidget {
  const IssueCarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
            color: AppColors.appBarColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow:<BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(1, 1),
                  blurRadius: 10
              ),
            ]
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.cancelTitleColor,
            ),
            const SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(title: AppStrings.vehicle,color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400,),
                const SizedBox(height: 8,),
                const CustomTextWidget(title: '7403 RUA',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}