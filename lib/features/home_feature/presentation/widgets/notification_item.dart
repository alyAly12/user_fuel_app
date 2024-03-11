import 'package:flutter/material.dart';

import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.containerColor});
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(
              color:AppColors.containerColor,
              width: 1
          )
      ),
      child: Padding(
        padding:  const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.notifications_outlined,
              color: AppColors.orderNumberColor,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  title: AppStrings.system,
                  color: AppColors.darkGrey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  title: 'New update in refund policy',
                  color: AppColors.lightTitleColor,
                  fontSize: 13,
                ),

              ],
            ),
            Spacer(),
            CustomTextWidget(
              title: '2 days ago',
              color: AppColors.lightTitleColor,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}