import 'package:driver_app/core/component/custom_border_button.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_route.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'gas_stattion_detail.dart';
import 'custom_car_detail.dart';
import 'order_details_header.dart';


class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const OrderDetailsHeader(),
        const SizedBox(height: 30,),
        const GasStationDetails(),
        const SizedBox(height: 60,),
        const CustomCarDetail(),
        const SizedBox(height: 60,),
       CustomBorderButton(
         buttonHeight: 60,
           onPressed: (){
           GoRouter.of(context).push(AppRoute.kReportIssueScreen);
           },
           color: AppColors.redColor,
           title: AppStrings.reportIssue,
           textSize: 15,
           textWeight: FontWeight.w500,
           textColor: AppColors.redColor,
           showIcon: false)
      ],
    );
  }
}



