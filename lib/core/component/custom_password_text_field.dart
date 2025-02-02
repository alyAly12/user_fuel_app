import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.obscureText,
    required this.suffixOnPressed,
    this.validator,
    this.onFieldSubmitted,
    this.onSaved,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool obscureText;
  final void Function() suffixOnPressed;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: AppColors.orderNumberColor),
        labelText: 'Password',
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelStyle: const TextStyle(color: AppColors.appBarColor),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:Color(0xffD1DBE2)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:Color(0xff96A6B2)),
        ),
        suffixIcon: IconButton(
          onPressed: suffixOnPressed,
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.redColor)),
        errorStyle: const TextStyle(fontSize: 14, color: AppColors.redColor),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.redColor)),
      ),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
    );
  }
}