import 'package:driver_app/core/component/custom_border_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../utils/app_colors.dart';
import '../utils/app_route.dart';
import '../utils/app_strings.dart';
import '../utils/assets_manager.dart';
import 'custom_rounded_column_button.dart';
import 'custom_text_widget.dart';

class CustomIssueSentSuccess extends StatelessWidget {
  const CustomIssueSentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Lottie.asset(AssetsManager.check,height: 120,animate:true ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: CustomTextWidget(
                title: AppStrings.issue,
                fontSize: 30,
                color:AppColors.appBarColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: CustomTextWidget(
                title: AppStrings.sent,
                fontSize: 30,
                color:AppColors.appBarColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
           CustomBorderButton(
               onPressed: (){
                 GoRouter.of(context).pushReplacement(AppRoute.kRootScreen);
               },
               color: AppColors.tealColor,
               title: 'Ok',
               textSize: 17,
               textWeight: FontWeight.w500,
               textColor: AppColors.tealColor,
               showIcon: true)
          ],
        ),
      ),
    );
  }
}