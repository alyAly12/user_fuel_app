import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/features/home_feature/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
    return   Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body:  HomeViewBody(onPressed:(){
        scaffoldKey.currentState?.openDrawer();
      },)
    );
  }
}