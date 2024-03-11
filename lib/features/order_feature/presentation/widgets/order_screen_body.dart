import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'order_menu_item.dart';

class OrderScreenBody extends StatelessWidget {
  const OrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
            child: ListView.separated(
                itemBuilder: (context,index){
                  return const OrdersMenuItem();
                },
                separatorBuilder: (context,index){
                  return const Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  );
                },
                itemCount: 4
            ),
          ),
        )
      ],
    );
  }
}

