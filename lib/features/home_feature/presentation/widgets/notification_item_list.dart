import 'package:flutter/material.dart';

import 'notification_item.dart';


class NotificationItemList extends StatelessWidget {
  const NotificationItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color>itemColors=[
      const Color(0xffFFFFFF),
      const Color(0xffFFFBEE),
      const Color(0xffFFFBEE),
      const Color(0xffFFFFFF),
      const Color(0xffFFFBEE),
      const Color(0xffFFFFFF),
      const Color(0xffFFFFFF),
      const Color(0xffFFFBEE),
      const Color(0xffFFFFFF),
    ];
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context,index){
          return  NotificationItem(containerColor: itemColors[index],);
        });
  }
}
