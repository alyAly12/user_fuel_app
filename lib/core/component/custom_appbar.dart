import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_colors.dart';
import 'custom_text_widget.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appBarTitle,  this.isVisible =false});
final String appBarTitle;
final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.deepRed,
      elevation: 0,
      centerTitle: true,
      title: CustomTextWidget(title: appBarTitle),
      leading: IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
      },
          icon: const Icon(Icons.menu,size: 30,)),
      actions: [
        Visibility(
          visible:isVisible ,
          child: TextButton(onPressed: (){
            GoRouter.of(context).pop();
          },
              child: const CustomTextWidget(title: 'Back',color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400,)),
        )
      ],
    );
  }
}
