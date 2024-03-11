import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class OrderAndLitersWidget extends StatelessWidget {
  const OrderAndLitersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color:AppColors.ultraGrey,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CustomTextWidget(title: AppStrings.orders,fontWeight:FontWeight.w500 ,fontSize: 15,color: AppColors.darkGrey,),
                const SizedBox(width: 5,),
                const CustomTextWidget(title: '120',fontSize:15 ,fontWeight:FontWeight.w500 ,color: Colors.white,)
              ],
            )
            ,Row(
              children: [
                CustomTextWidget(title: AppStrings.liters,fontWeight:FontWeight.w500 ,fontSize: 15,color: AppColors.darkGrey,),
                const SizedBox(width: 5,),
                const CustomTextWidget(title: '500',fontSize:15 ,fontWeight:FontWeight.w500 ,color: Colors.white,)
              ],
            )
          ],
        ),
      ),
    );
  }
}