import '../models/aiinmentalhealt_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maheen_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AiinmentalhealtItemWidget extends StatelessWidget {
  AiinmentalhealtItemWidget(
    this.aiinmentalhealtItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AiinmentalhealtItemModel aiinmentalhealtItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 243.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(9.h),
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2172x224,
                height: 172.v,
                width: 224.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 8.v,
                ),
                child: Text(
                  "msg_ai_in_mental_health".tr,
                  style: CustomTextStyles.titleSmallDMSansBlack900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_venue".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "lbl_dj_hall".tr,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
