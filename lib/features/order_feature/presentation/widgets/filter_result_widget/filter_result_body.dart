import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/filter_result_widget/filter_result_notify.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/filter_result_widget/orders_and_liter_widget.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_menu_item.dart';
import 'package:flutter/material.dart';

class FilterResultBody extends StatelessWidget {
  const FilterResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const FilterResultNotify(),
        const SizedBox(height: 20,),
       const OrderAndLitersWidget(),
        const SizedBox(height: 20,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration:  BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(1, 1),
                    blurRadius: 10,
                    spreadRadius: 5
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      shrinkWrap: true,
                        itemBuilder: (context,index){
                          return const OrdersMenuItem();
                        },
                        separatorBuilder: (context,index){
                          return const Divider(
                            thickness: 1,
                            color: AppColors.orderNumberColor,
                          );
                        },
                        itemCount: 10),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


