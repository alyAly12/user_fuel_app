import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/order_filter_header.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/today_custom_container.dart';
import 'package:flutter/material.dart';


class OrderFiltrationScreen extends StatelessWidget {
  const OrderFiltrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
          child: Column(
            children: [
              OrderFilerHeader(),
              SizedBox(height: 10),
              TodayCustomTextField()
            ],
          ),
        ),
      ),
    );
  }
}
