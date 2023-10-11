import '../frame_thirtysix_screen/widgets/userprofile_item_widget.dart';
import 'bloc/frame_thirtysix_bloc.dart';
import 'models/frame_thirtysix_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maheen_s_application1/core/app_export.dart';
import 'package:maheen_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:maheen_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:maheen_s_application1/widgets/app_bar/custom_app_bar.dart';

class FrameThirtysixScreen extends StatelessWidget {
  const FrameThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirtysixBloc>(
      create: (context) => FrameThirtysixBloc(FrameThirtysixState(
        frameThirtysixModelObj: FrameThirtysixModel(),
      ))
        ..add(FrameThirtysixInitialEvent()),
      child: FrameThirtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
          title: AppbarSubtitle(
            text: "lbl_made_with".tr,
            margin: EdgeInsets.only(left: 99.h),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgFavorite,
              margin: EdgeInsets.fromLTRB(7.h, 21.v, 103.h, 20.v),
            ),
          ],
        ),
        body: Container(
          width: 312.h,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Expanded(
                child: BlocSelector<FrameThirtysixBloc, FrameThirtysixState,
                    FrameThirtysixModel?>(
                  selector: (state) => state.frameThirtysixModelObj,
                  builder: (context, frameThirtysixModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 101.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 19.h,
                        crossAxisSpacing: 19.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          frameThirtysixModelObj?.userprofileItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        UserprofileItemModel model = frameThirtysixModelObj
                                ?.userprofileItemList[index] ??
                            UserprofileItemModel();
                        return UserprofileItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 4.v),
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
