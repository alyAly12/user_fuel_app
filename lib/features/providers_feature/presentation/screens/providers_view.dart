import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/providers_feature/presentation/widgets/provider_screen_body.dart';
import 'package:flutter/material.dart';

class ProvidersView extends StatelessWidget {
  const ProvidersView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.serviceProviders,)),
      body: const ProviderScreenBody()
    );
  }
}