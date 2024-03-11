import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/assets_manager.dart';

class OrderDetailsHeader extends StatelessWidget {
  const OrderDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: AppColors.backGroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextWidget(title: 'Order #',fontSize:15 ,fontWeight:FontWeight.w400 ,color: AppColors.darkGrey,),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    SvgPicture.asset(AssetsManager.gasPumb,height: 30,),
                    const SizedBox(width: 12,),
                    const CustomTextWidget(title: 'F000123',fontSize:20 ,fontWeight:FontWeight.w400 ,color: AppColors.darkGrey,),
                  ],
                ),
                const SizedBox(height: 12,),
                const CustomTextWidget(title: 'Sun Jul 9, 2023 @10:14 am',fontSize:15 ,fontWeight:FontWeight.w400 ,color: AppColors.lightTitleColor,),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                CustomTextWidget(title: AppStrings.secretCode,fontWeight:FontWeight.w400 ,fontSize:15 ,color:AppColors.darkGrey ,),
                const SizedBox(height: 8,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.redColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Center(
                    child: CustomTextWidget(title: '3872',color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}