import 'package:driver_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/login_view_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
          resizeToAvoidBottomInset : false,
        backgroundColor: AppColors.deepRed,
        body:LoginViewBody()
      ),
    );
  }
}
