import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_route.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/filter_result_widget/filter_result_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilterResultScreen extends StatelessWidget {
  const FilterResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          GoRouter.of(context).push(AppRoute.kOrderFiltrationScreen);
        },child: const Icon(Icons.filter_list_outlined,color: AppColors.appBarColor,),),
      backgroundColor: AppColors.backGroundColor,
      drawer: const CustomDrawer(),
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.orders,isVisible: true,)),
      body: const FilterResultBody(),
    );
  }
}
