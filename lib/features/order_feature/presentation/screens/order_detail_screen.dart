import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_detail_widgets/order_details_body.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.ordersDetail,isVisible: true,)),
      body: const OrderDetailsBody(),
    );
  }
}
