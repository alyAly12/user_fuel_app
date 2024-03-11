import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'custom_home_header.dart';
import 'home_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, this.onPressed});
 final  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   child: CustomHomeHeader(onPressed: onPressed,),
          // ),
          const SizedBox(
            height: 130,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const HomeListItem(
                    isActive: true,
                  );
                }),
          )
        ],
      ),
       Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: CustomHomeHeader(onPressed: onPressed,),
      ),
    ]);
  }
}
