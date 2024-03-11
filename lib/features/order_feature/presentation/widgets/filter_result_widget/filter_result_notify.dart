import 'package:flutter/material.dart';

import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';

class FilterResultNotify extends StatelessWidget {
  const FilterResultNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.goldColor,width: 1),
          borderRadius: BorderRadius.circular(25),
          color: AppColors.lightGold,
        ),
        child:  Row(
          children: [
            const CustomTextWidget(title: '7403-RUN,1/2/20024 - 5/2/2024,GAS 91',fontSize: 13,color:AppColors.goldColor,fontWeight: FontWeight.w500,),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.close,color: Colors.black,size: 20,))
          ],
        ),
      ),
    );
  }
}
