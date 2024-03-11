import 'package:driver_app/features/order_feature/presentation/widgets/report_issue_widget/issue_car_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/component/custom_login_button.dart';
import '../../../../../core/component/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/app_strings.dart';
import '../order_detail_widgets/custom_car_detail.dart';


class ReportIssueBody extends StatefulWidget {
  const ReportIssueBody({super.key});

  @override
  State<ReportIssueBody> createState() => _ReportIssueBodyState();
}

class _ReportIssueBodyState extends State<ReportIssueBody> {
  late TextEditingController titleController;
  late TextEditingController detailController;

  @override
  void initState() {
    titleController =TextEditingController();
    detailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    detailController.dispose();
    super.dispose();
  }
  Future<void>helpSubmit()async{
    if(titleController.text.isEmpty&&detailController.text.isEmpty){
      return ;
    }else{
      GoRouter.of(context).push(AppRoute.kSuccessScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IssueCarDetail(),
          const SizedBox(height: 20,),
          CustomTextWidget(title: AppStrings.title,fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.appBarColor,),
          const SizedBox(height: 20,),
          TextField(
            controller: titleController,
            decoration:  const InputDecoration(
              fillColor: Colors.white,
              errorText: 'This Field is required',
              errorStyle: TextStyle(color: AppColors.deepRed),
              filled: true,
              hintText: 'Required Field',
              hintStyle: TextStyle(color: AppColors.orderNumberColor),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redColor),
              ) ,
              enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.orderNumberColor),
              ) ,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.orderNumberColor),
              ),
              focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.orderNumberColor)
              ) ,
              disabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.orderNumberColor)
              ) ,
              enabled: true,
            ),
          ),
          const SizedBox(height: 40,),
          CustomTextWidget(title: AppStrings.enterDetails,fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.appBarColor,),
          const SizedBox(height: 20,),
          TextField(
            maxLines: 5,
            controller: detailController,
            decoration:  const InputDecoration(
              errorText:'This Field is required',
              errorStyle: TextStyle(color: AppColors.deepRed),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Required Field',
              hintStyle: TextStyle(color: AppColors.orderNumberColor),

              enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.orderNumberColor)
              ) ,
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redColor),
              ) ,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.orderNumberColor),
              ),
              focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.orderNumberColor)
              ) ,
            ),
          ),
          const SizedBox(height: 70,),
          CustomLoginButton(
              buttonHeight:60 ,
              onPressed: (){
                helpSubmit();
              },
              color: AppColors.redColor,
              textSize: 17,
              textWeight: FontWeight.w500,
              title: 'Send',
              showIcon: true
          )
        ],
      ),
    );
  }
}
