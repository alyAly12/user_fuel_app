import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/assets_manager.dart';
import 'features/home_feature/presentation/screens/home_view.dart';
import 'features/order_feature/presentation/screens/order_view.dart';
import 'features/providers_feature/presentation/screens/providers_view.dart';
import 'features/support_feature/presentation/screens/support_view.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> pages = [
    const HomeView(),
    const OrderView(),
    const ProvidersView(),
    const SupportView()
  ];

  @override
  void initState() {
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller:controller ,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: AppColors.redColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreen,
          onTap: (int index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(currentScreen);
          },
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsManager.homeIcon,
                color: currentScreen == 0
                    ? AppColors.redColor
                    : AppColors.lightTitleColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetsManager.orderIcon,
                  color: currentScreen == 1
                      ? AppColors.redColor
                      : AppColors.lightTitleColor),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetsManager.providersIcon,
                  color: currentScreen == 2
                      ? AppColors.redColor
                      : AppColors.lightTitleColor),
              label: 'Provider',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetsManager.supportIcon,
                  color: currentScreen == 3
                      ? AppColors.redColor
                      : AppColors.lightTitleColor),
              label: 'Support',
            ),
          ]),
    );
  }
}
