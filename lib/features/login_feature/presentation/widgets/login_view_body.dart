import 'package:driver_app/core/component/custom_email_text_field.dart';
import 'package:driver_app/core/component/custom_login_button.dart';
import 'package:driver_app/core/component/custom_password_text_field.dart';
import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/core/utils/auth_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_route.dart';
import 'login_header.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController passWord;
  late FocusNode userNode;
  late FocusNode passNode;
  bool obscureText = true;

  @override
  void initState() {
    userName =TextEditingController();
    passWord =TextEditingController();
    userNode = FocusNode();
    passNode =FocusNode();
    super.initState();
  }
  @override
  void dispose() {
    userName.dispose();
    passWord.dispose();
    userNode.dispose();
    passNode.dispose();
    super.dispose();
  }
  Future<void> loginFct() async {
    final isValid = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      GoRouter.of(context).pushReplacement(AppRoute.kRootScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: const LoginHeader(),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 83,horizontal: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomEmailTextField(
                          controller: userName,
                          focusNode: userNode,
                        validator:(value){
                           return AuthValidator.userNameValidator(value);
                        } ,
                      ),
                      const SizedBox(height: 50,),
                      CustomPasswordTextField(
                          controller: passWord,
                          focusNode: passNode,
                          obscureText: obscureText,
                          suffixOnPressed: (){
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        validator: (value){
                            return AuthValidator.passWordValidator(value);
                        },
                        onFieldSubmitted: (value){
                            loginFct();
                        },
                         ),
                      const SizedBox(height: 60,),
                      CustomLoginButton(
                          textSize: 20,
                          textWeight: FontWeight.w600,
                          onPressed: (){
                            loginFct();
                          },
                          color: AppColors.redColor,
                          title: AppStrings.login,
                          showIcon: false
                      ),
                      const Spacer(),
                      const CustomTextWidget(title: 'SyarahApp Driver v1.20 @2023',fontSize: 10,color: AppColors.smallTitle,),
                      const SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ).animate().slide(
          begin: const Offset(0, 2),
          end: const Offset(0, 0),
          duration: const Duration(milliseconds:300)
      ),
    );
  }
}
