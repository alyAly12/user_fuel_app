import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/select_vehicle_type_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'type_widget.dart';


class SelectVehicleList extends StatefulWidget {
  const SelectVehicleList({
    super.key,

  });


  @override
  State<SelectVehicleList> createState() => _SelectVehicleListState();
}

class _SelectVehicleListState extends State<SelectVehicleList> {
  bool _firstCar = false;
  bool _secondCar = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SelectVehicleTypeWidget(
          type: '7403-RUN',
          onTap: () {
            setState(() {
              _firstCar =! _firstCar;
            });
          },
          buttonColor: _firstCar ? AppColors.redColor : Colors.white,
          titleColor:
          _firstCar ? Colors.white : AppColors.appBarColor,
          border: _firstCar
              ? Border.all(color: Colors.transparent, width: 1.2)
              : Border.all(
              color: AppColors.orderNumberColor, width: 1.2),
        ),
        const SizedBox(
          width: 10,
        ),
        SelectVehicleTypeWidget(
          type: '2456-RUN',
          onTap: () {
            setState(() {
              _secondCar =!_secondCar;
            });
          },
          buttonColor: _secondCar ? AppColors.redColor : Colors.white,
          titleColor: _secondCar ? Colors.white : AppColors.appBarColor,
          border: _secondCar
              ? Border.all(color: Colors.transparent, width: 1.2)
              : Border.all(
              color: AppColors.orderNumberColor, width: 1.2),
        )
      ],
    );
  }
}