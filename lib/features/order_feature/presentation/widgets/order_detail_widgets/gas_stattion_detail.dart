import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class GasStationDetails extends StatelessWidget {
  const GasStationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: AppStrings.stationName,color: AppColors.darkGrey,fontSize: 15,fontWeight: FontWeight.w400,),
              const SizedBox(height: 8,),
              const CustomTextWidget(title: 'GULF station',color: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 18,)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: AppStrings.location,color: AppColors.darkGrey,fontSize: 15,fontWeight: FontWeight.w400,),
              const SizedBox(height: 8,),
              const CustomTextWidget(title: 'Olya',color: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 18,)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: AppStrings.city,color: AppColors.darkGrey,fontSize: 15,fontWeight: FontWeight.w400,),
              const SizedBox(height: 8,),
              const CustomTextWidget(title: 'Riyadh',color: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 18,)
            ],
          ),
        ],
      ),
    );
  }
}