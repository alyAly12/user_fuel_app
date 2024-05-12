import 'package:driver_app/features/side_menu_feature/presentation/widgets/terms_and_conditions/terms_and_condtion_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/component/custom_appbar.dart';
import '../../../../core/component/custom_drawer.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      drawer: const CustomDrawer(),
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.termsAndConditions,isVisible: true,)),
      body: const TermsBody(),
    );
  }
}
