import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/side_menu_feature/presentation/widgets/profile_widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      drawer: const CustomDrawer(),
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.profile,isVisible: true,)),
      body: const ProfileViewBody(),
    );
  }
}
