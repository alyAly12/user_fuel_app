import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/app_strings.dart';
import 'package:driver_app/core/utils/assets_manager.dart';
import 'package:driver_app/features/providers_feature/presentation/widgets/provider_items.dart';
import 'package:flutter/material.dart';


class ProviderScreenBody extends StatelessWidget {
  const ProviderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Container(
        //   padding: const EdgeInsets.symmetric(vertical: 40),
        //   decoration:  BoxDecoration(
        //     color: AppColors.lightWhite,
        //     boxShadow: <BoxShadow>[
        //       BoxShadow(
        //         offset: const Offset(0, 1),
        //         color: Colors.grey.shade300,
        //         blurRadius: 10,
        //         spreadRadius: 5
        //       )
        //     ]
        //   ),
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //       child: CustomTextWidget(title: AppStrings.nearestProvider,fontSize:13 ,fontWeight:FontWeight.w400 ,color:AppColors.darkGrey ,)),
        // ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 20),
              itemBuilder:(context,index){
                return const ProvidersItems();
              }, separatorBuilder: (context,index){
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Divider(
                    thickness: 0.5,
                    color: AppColors.dividerColor,
                  ),
                );
          }, itemCount: 14),
        )
      ],
    );
  }
}

