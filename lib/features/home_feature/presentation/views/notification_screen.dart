import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/home_feature/presentation/widgets/notification_screen_body.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
        child: CustomAppBar(appBarTitle: AppStrings.notifications,isVisible: true,),),
      body: const NotificationScreenBody(),
    );
  }
}
