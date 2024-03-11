import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/component/subtitle_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/assets_manager.dart';




class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  navigateToWelcomeScreen() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
          () async{
        await GoRouter.of(context).pushReplacement(AppRoute.kLoginView);
      },
    );
  }
  @override
  void initState() {
   navigateToWelcomeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Animate(
      child: Stack(
          children: [
            Positioned(
                bottom: 33.h,
                child: SvgPicture.asset(
                    AssetsManager.splash)),
            Positioned.fill(
              top: 15.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsManager.sayarahLogo,
                  ),
                  const SizedBox(height: 60,),
                  SubTitleWidget(
                    subTitle: 'Activation App v1.20 @2023',
                    fontSize: 10.sp,
                    color: AppColors.smallTitle,
                  ),
                ],
              ),
            ),
          ]),
    ).animate(delay: const Duration(seconds: 2));
  }
}
