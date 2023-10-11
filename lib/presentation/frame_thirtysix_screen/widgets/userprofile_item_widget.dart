import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maheen_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse1,
          height: 75.adaptSize,
          width: 75.adaptSize,
          radius: BorderRadius.circular(
            37.h,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "lbl_nahal_roshan".tr,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
