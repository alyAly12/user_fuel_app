import 'package:driver_app/core/component/custom_appbar.dart';
import 'package:driver_app/core/component/custom_drawer.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/features/order_feature/presentation/widgets/report_issue_widget/report_issue_body.dart';
import 'package:flutter/material.dart';


class ReportIssueScreen extends StatelessWidget {
  const ReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const CustomDrawer(),
      appBar: PreferredSize(preferredSize: const Size(kBottomNavigationBarHeight, kBottomNavigationBarHeight),
          child: CustomAppBar(appBarTitle: AppStrings.reportIssue,isVisible: true,)),
      body: const SingleChildScrollView(
          reverse: true,
          child:  ReportIssueBody()),
    );
  }
}
