import '../models/listworkshops_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maheen_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListworkshopsItemWidget extends StatelessWidget {
  ListworkshopsItemWidget(
    this.listworkshopsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListworkshopsItemModel listworkshopsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 102.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSettings,
                height: 13.v,
                width: 12.h,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_workshops".tr,
                  style: CustomTextStyles.labelLargeMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
