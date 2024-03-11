import 'package:driver_app/core/component/custom_text_widget.dart';
import 'package:driver_app/core/component/pick_image_function.dart';
import 'package:driver_app/core/utils/app_colors.dart';
import 'package:driver_app/core/utils/assets_manager.dart';
import 'package:driver_app/features/side_menu_feature/presentation/widgets/profile_widgets/custom_profile_box.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/component/dialog_services.dart';


class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  XFile? _pickedImage;
  void removePickedImage() {
    setState(() {
      _pickedImage = null;

    });
  }
  Future<void> localImagePicker() async {
    final ImagePicker picker = ImagePicker();
    DialogServices.imagePickerDialog(
        context: context,
        cameraFct: () async {
          _pickedImage = await picker.pickImage(source: ImageSource.camera);
          setState(() {});
        },
        galleryFct: () async {
          _pickedImage = await picker.pickImage(source: ImageSource.gallery);
          setState(() {});
        },
        removeFct: () {
          setState(() {
            _pickedImage = null;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: AppColors.redColor,
            child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  EdgeInsets.only(bottom: 20,left: 60),
                  child: CustomTextWidget(title: 'Ahmed Ali',color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500,),
                )),
          ),
        ],
      ),
        Positioned(
          top: 50,
          left: 40,
          child: PickImageFunction(
            pickedImage: _pickedImage,
            image: AssetsManager.cameraAlt,
            file: _pickedImage?.path,
            title: '',
            imagePickerFun: (){localImagePicker();},
            removeTheImage: (){removePickedImage();},
          ),
        ),
        const Positioned(
            top: 80,
            left: 145,
            child: CircleAvatar(
              backgroundColor: AppColors.backGroundColor,
              radius: 15,
              child: Center(
                child: Icon(Icons.upload,size: 20,color: AppColors.lightGrey,),
              ),
            )),
        const Positioned.fill(
          top: 220,
            child: Column(
              children: [
                CustomProfileBox()
              ],
            ))
   ] );
  }
}
