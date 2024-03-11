import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_route.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key, this.onPressed});
final  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      decoration: const BoxDecoration(
          color: AppColors.deepRed,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(55),
            bottomRight: Radius.circular(55),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 10,
            ),
            ClipOval(
              child: SvgPicture.asset(
                AssetsManager.person,
                height: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(title: AppStrings.welcome,fontSize: 13,fontWeight: FontWeight.w300,color: Colors.white,),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextWidget(title:'Sami Ali',fontSize: 17,fontWeight: FontWeight.w500,color:Colors.white,),
              ],
            ),
            const Spacer(),
             Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Badge(
                label: const Text('2'),
                textColor: Colors.white,
                smallSize: 15,
                largeSize: 18,
                alignment: Alignment.topRight,
                backgroundColor: AppColors.appBarColor,
                child: InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRoute.kNotificationScreen);
                    },
                    child: const Icon(Icons.notifications,size: 30,color: Colors.white,)))
              ),
          ],
        ),
      ),
    );
  }
}
