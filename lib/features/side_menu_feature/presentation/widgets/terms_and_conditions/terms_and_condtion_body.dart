import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsBody extends StatelessWidget {
  const TermsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(AssetsManager.appLogo),
          const SizedBox(
            height: 20,
          ),
          const Align(
              alignment: Alignment.topCenter,
              child: CustomTextWidget(
                title: 'Driver v1.20 @2023',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.orderNumberColor,
              )),
          const SizedBox(
            height: 40,
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: CustomTextWidget(
                title: 'Terms and conditions',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.appBarColor,
              )),
          const SizedBox(
            height: 40,
          ),
          const CustomTextWidget(
            title:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industrys standard dummy text',
            maxLines: 10,
            fontSize: 15,
          )
        ],
      ),
    );
  }
}
