import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_route.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const CustomDrawer(),
      appBar:PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
      child: CustomAppBar(appBarTitle: AppStrings.orders)),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            GoRouter.of(context).push(AppRoute.kOrderFiltrationScreen);
          },
        backgroundColor: Colors.white,
        child: const Icon(Icons.filter_list_outlined,color: AppColors.darkGrey,),
      ),
      body: const OrderScreenBody()
    );
  }
}