import 'package:driver_app/features/home_feature/presentation/widgets/notification_item_list.dart';
import 'package:flutter/material.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        Expanded(child: NotificationItemList())
      ],
    );
  }
}
