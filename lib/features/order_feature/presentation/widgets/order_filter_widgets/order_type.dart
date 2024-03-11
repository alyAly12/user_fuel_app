import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import 'type_widget.dart';


class OrderTypeList extends StatefulWidget {
  const OrderTypeList({
    super.key,

  });


  @override
  State<OrderTypeList> createState() => _OrderTypeListState();
}

class _OrderTypeListState extends State<OrderTypeList> {
  bool _fuelType = false;
  bool _oilType = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TypeWidget(
          type: AppStrings.fuel,
          onTap: () {
            setState(() {
              _fuelType =! _fuelType;
            });
          },
          buttonColor: _fuelType ? AppColors.redColor : Colors.white,
          titleColor:
          _fuelType ? Colors.white : AppColors.appBarColor,
          border: _fuelType
              ? Border.all(color: AppColors.cancelTitleColor, width: 1.2)
              : Border.all(
              color: AppColors.orderNumberColor, width: 1.2),
        ),
        const SizedBox(
          width: 6,
        ),
        TypeWidget(
          type: AppStrings.oil,
          onTap: () {
            setState(() {
              _oilType =!_oilType;
            });
          },
          buttonColor: _oilType ? AppColors.redColor : Colors.white,
          titleColor: _oilType ? Colors.white : AppColors.appBarColor,
          border: _oilType
              ? Border.all(color: Colors.transparent, width: 1.2)
              : Border.all(
              color: AppColors.orderNumberColor, width: 1.2),
        )
      ],
    );
  }
}
