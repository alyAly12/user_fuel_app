import 'package:driver_app/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';

class OrdersMenuItem extends StatelessWidget {
  const OrdersMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoute.kOrderDetailScreen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: AppColors.lightTitleColor,
              child: Center(
                child: SvgPicture.asset(AssetsManager.gasPumb,color: Colors.white,height: 20,),
              ),
            ),
            const SizedBox(width: 8,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(title: 'F000123',fontSize: 15,color: AppColors.darkGrey,fontWeight: FontWeight.w500,),
                SizedBox(height: 2,),
                CustomTextWidget(title: 'Sun Jul 9, 2023 10:14 am',fontSize: 13,color: AppColors.lightTitleColor,fontWeight: FontWeight.w500,),
              ],
            ),
            const Spacer(),
            const CustomTextWidget(title: '30 L',fontSize: 13,color: AppColors.lightTitleColor,fontWeight: FontWeight.w500,),
            const SizedBox(width: 7,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.deepRed
              ),
              child: const Center(
                child: CustomTextWidget(title: 'Fuel 91',fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white,),
              ),
            ),
            const SizedBox(width: 7,),
            const Icon(Icons.arrow_forward_ios_rounded,size: 15,)
          ],
        ),
      ),
    );
  }
}