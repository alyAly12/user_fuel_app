import 'package:driver_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({super.key, this.isActive = false});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15.0,
                  offset: const Offset(1, 1))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        title: AppStrings.vehicle,
                        fontSize: 15,
                        color: AppColors.lightTitleColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextWidget(
                        title: '7403-RUN',
                        fontSize: 18,
                        color: AppColors.appBarColor,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        title: AppStrings.secretCode,
                        fontSize: 15,
                        color: AppColors.lightTitleColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: const BoxDecoration(
                          color: AppColors.deepRed,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const CustomTextWidget(
                          title: '3872',
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isActive,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColors.activeColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomTextWidget(
                          title: AppStrings.activeOrders,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.lightTitleColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: Divider(
                          color: AppColors.welcomeScript,
                          thickness: 0.5,
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetsManager.gasPumb,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const CustomTextWidget(
                          title: 'F000123',
                          fontSize: 15,
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const CustomTextWidget(
                          title: '(Gas 91)',
                          fontSize: 15,
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.w400,
                        ),
                        const Spacer(),
                        const CustomTextWidget(
                          title: '2:30 min(s)',
                          fontSize: 14,
                          color: AppColors.darkGrey,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
