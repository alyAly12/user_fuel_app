import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/product_type_list.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/select_vehicle_list.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/order_filter_widgets/today_date_container.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/component/custom_login_button.dart';
import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/component/pick_time_function.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/app_strings.dart';
import 'custom_filter_text_field.dart';
import 'order_type.dart';



class TodayCustomTextField extends StatefulWidget {
  const TodayCustomTextField({
    super.key,
  });

  @override
  State<TodayCustomTextField> createState() => _TodayCustomTextFieldState();
}

class _TodayCustomTextFieldState extends State<TodayCustomTextField> {
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  late TextEditingController toController;
  late TextEditingController fromController;
  late TextEditingController yesterdayFromController;
  late TextEditingController yesterdayToController;
  @override
  void initState() {
    toController = TextEditingController();
    fromController = TextEditingController();
    yesterdayFromController = TextEditingController();
    yesterdayToController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    toController.dispose();
    fromController.dispose();
    yesterdayFromController.dispose();
    yesterdayToController.dispose();
    super.dispose();
  }

  bool _todayPressed = false;
  bool _yesterdayPressed = false;
  Future<void>applyFunction()async{
    final _isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if(_isValid){
      if(fromController.text.isEmpty ){
        Fluttertoast.showToast(
            msg: "Please select a time",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor:AppColors.appBarColor,
            textColor: Colors.white,
            fontSize: 16.0
        );
        return null;
      }
      GoRouter.of(context).pushReplacement(AppRoute.kFilterResultScreen);
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40,),
          CustomTextWidget(
            title: AppStrings.selectVehicle,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.darkGrey,
          ),
          const SizedBox(height: 40,),
          const Row(
            children: [
            SelectVehicleList()
          ],),
          const SizedBox(height: 40,),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: CustomFilterTextField(
                  enabled: true,
                  controller: toController,
                  fillColor: Colors.white ,
                  labelText: AppStrings.from,
                  onTap: () async {
                    await pickTime(controller: toController, context: context);
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                child: CustomFilterTextField(
                  enabled: true,
                  controller: fromController,
                  fillColor: Colors.white ,
                  labelText: AppStrings.to,
                  onTap: () async {
                    await pickTime(controller: fromController, context: context);
                    setState(() {});
                  },
                ),
              ),
              const Flexible(
                  flex: 1,
                  child: SizedBox())
            ],
          ),

          const SizedBox(
            height: 40,
          ),
          CustomTextWidget(
            title: AppStrings.orderType,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.darkGrey,
          ),
          const SizedBox(
            height: 40,
          ),
          const OrderTypeList(),
          const SizedBox(
            height: 40,
          ),
          CustomTextWidget(
            title: AppStrings.product,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.darkGrey,
          ),
          const SizedBox(
            height: 40,
          ),
          const OrderProductList(),
          const SizedBox(
            height: 40,
          ),
          CustomLoginButton(
            buttonHeight: size.width * 0.12,
            color: (fromController.text.isNotEmpty)
                ? AppColors.redColor
                : AppColors.orderNumberColor,
            onPressed: () {
              applyFunction();
            },
            title: AppStrings.apply,
            showIcon: false,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
