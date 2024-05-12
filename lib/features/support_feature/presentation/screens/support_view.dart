import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/support_feature/presentation/widgets/support_screen_body.dart';
import 'package:flutter/material.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        drawer: const CustomDrawer(),
        appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
            child: CustomAppBar(appBarTitle: AppStrings.help,isVisible: true,)),
        body: const SingleChildScrollView(
            reverse: true,
            child: SupportScreenBody())
      ),
    );
  }
}
