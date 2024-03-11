import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomEmailTextField extends StatelessWidget {
  const CustomEmailTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.validator,

    this.onSaved,
  });
  final TextEditingController controller;
  final FocusNode focusNode;

  final String? Function(String?)? validator;

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.multiline,
      decoration: const InputDecoration(
        labelText: 'User name',
        labelStyle: TextStyle(color: AppColors.orderNumberColor),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelStyle: TextStyle(color: AppColors.appBarColor),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color(0xffD1DBE2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color(0xff96A6B2)),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.redColor)),
        errorStyle: TextStyle(fontSize: 14, color: AppColors.redColor),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.redColor)),
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}