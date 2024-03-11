import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_colors.dart';
import '../utils/app_route.dart';
import '../utils/app_strings.dart';
import '../utils/assets_manager.dart';
import 'custom_text_button.dart';
import 'custom_text_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Positioned.fill(
            top: 70,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    GoRouter.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: SvgPicture.asset(AssetsManager.closeIcon),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextButton(title: AppStrings.home, onPressed: (){
                  GoRouter.of(context).pushReplacement(AppRoute.kRootScreen);
                  },textSize:15 ,textColor:  AppColors.appBarColor,),
                CustomTextButton(title: AppStrings.orders, onPressed: (){
                  GoRouter.of(context).push(AppRoute.kOrderView);
                  },textSize:15,textColor: AppColors.appBarColor),
                CustomTextButton(title: AppStrings.profile,
                    onPressed: (){
                  GoRouter.of(context).push(AppRoute.kProfileScreen);
                  },
                    textSize:15,textColor: AppColors.appBarColor),
                CustomTextButton(title: AppStrings.serviceProviders, onPressed: (){
                  GoRouter.of(context).push(AppRoute.kProviderView);
                  },textSize:15,textColor: AppColors.appBarColor),
                CustomTextButton(title: AppStrings.support, onPressed: (){
                  GoRouter.of(context).push(AppRoute.kSupportView);
                },textSize:15,textColor: AppColors.appBarColor),

                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kTermsScreen);
                  },
                  child: CustomTextWidget(
                    title: AppStrings.termsAndConditions,
                    color:  AppColors.appBarColor,
                    fontSize: 15,

                  ),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: CustomTextWidget(
                    title: AppStrings.logOut,
                    color: AppColors.redColor,
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 6,horizontal: 3),
                  child: CustomTextWidget(title: 'SyarahApp Worker v1.20 @2023',fontSize: 13,fontWeight: FontWeight.normal,color: AppColors.orderNumberColor,),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}