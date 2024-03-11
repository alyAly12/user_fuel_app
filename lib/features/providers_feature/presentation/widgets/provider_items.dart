import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';


class ProvidersItems extends StatelessWidget {
  const ProvidersItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 14),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor:AppColors.photoBorderColor,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: SvgPicture.asset(AssetsManager.sascoLogo,height: 37,),
            ),
          ),
          const SizedBox(width: 8,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: 'Station name',fontSize: 15,color: AppColors.appBarColor,fontWeight: FontWeight.w500,),
              SizedBox(height: 1,),
              CustomTextWidget(title: '124 salman st , main road',fontSize: 13,color: AppColors.lightTitleColor,fontWeight: FontWeight.w500,),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(AssetsManager.roundMap),
          )
        ],
      ),
    );
  }
}