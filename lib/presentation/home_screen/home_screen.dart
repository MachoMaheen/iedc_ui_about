import '../home_screen/widgets/aiinmentalhealt_item_widget.dart';
import '../home_screen/widgets/listworkshops_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/aiinmentalhealt_item_model.dart';
import 'models/home_model.dart';
import 'models/listworkshops_item_model.dart';
import 'package:flutter/material.dart';
import 'package:maheen_s_application1/core/app_export.dart';
import 'package:maheen_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:maheen_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:maheen_s_application1/widgets/custom_search_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                title: Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_track".tr,
                              style: CustomTextStyles.titleLargeBlack90021),
                          TextSpan(
                              text: "msg_what_s_happening".tr,
                              style: CustomTextStyles.titleLargeBold)
                        ]),
                        textAlign: TextAlign.left)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          EdgeInsets.only(left: 26.h, top: 13.v, right: 17.h)),
                  AppbarImage(
                      svgPath: ImageConstant.imgUser,
                      margin:
                          EdgeInsets.only(left: 19.h, top: 12.v, right: 43.h))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocSelector<HomeBloc, HomeState,
                                      TextEditingController?>(
                                  selector: (state) => state.searchController,
                                  builder: (context, searchController) {
                                    return CustomSearchView(
                                        margin: EdgeInsets.only(
                                            left: 3.h, right: 27.h),
                                        controller: searchController,
                                        hintText: "msg_search_events".tr,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                8.h, 16.v, 4.h, 12.v),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 49.v),
                                        suffix: Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.h),
                                            child: IconButton(
                                                onPressed: () {
                                                  searchController!.clear();
                                                },
                                                icon: Icon(Icons.clear,
                                                    color: Colors
                                                        .grey.shade600))));
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 3.h, top: 24.v),
                                  child: Text("lbl_ongoing_event".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 13.v, right: 27.h),
                                  padding: EdgeInsets.all(13.h),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle2,
                                            height: 241.v,
                                            width: 313.h,
                                            radius:
                                                BorderRadius.circular(18.h)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 11.v),
                                            child: Text(
                                                "msg_ai_in_mental_health".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBlack900)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 7.h, top: 1.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_venue".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeDarkerGrotesqueBlack900_3),
                                                  TextSpan(
                                                      text: "lbl_dj_hall".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeDarkerGrotesqueBlack900_2)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 21.v, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_categories".tr,
                                            style: theme.textTheme.titleLarge),
                                        Container(
                                            height: 20.v,
                                            width: 72.h,
                                            margin: EdgeInsets.only(top: 5.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "lbl_view_all".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallDMSansBlueA700)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 19.v,
                                                      width: 17.h,
                                                      alignment:
                                                          Alignment.centerRight)
                                                ]))
                                      ])),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 27.v,
                                      child: BlocSelector<HomeBloc, HomeState,
                                              HomeModel?>(
                                          selector: (state) =>
                                              state.homeModelObj,
                                          builder: (context, homeModelObj) {
                                            return ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 6.h);
                                                },
                                                itemCount: homeModelObj
                                                        ?.listworkshopsItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  ListworkshopsItemModel model =
                                                      homeModelObj?.listworkshopsItemList[
                                                              index] ??
                                                          ListworkshopsItemModel();
                                                  return ListworkshopsItemWidget(
                                                      model);
                                                });
                                          }))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 3.h, top: 13.v, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_events".tr,
                                            style: theme.textTheme.titleLarge),
                                        Container(
                                            height: 20.v,
                                            width: 72.h,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 3.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "lbl_view_all".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallDMSansBlueA700)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 19.v,
                                                      width: 17.h,
                                                      alignment:
                                                          Alignment.centerRight)
                                                ]))
                                      ])),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 242.v,
                                      child: BlocSelector<HomeBloc, HomeState,
                                              HomeModel?>(
                                          selector: (state) =>
                                              state.homeModelObj,
                                          builder: (context, homeModelObj) {
                                            return ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 16.h);
                                                },
                                                itemCount: homeModelObj
                                                        ?.aiinmentalhealtItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  AiinmentalhealtItemModel
                                                      model =
                                                      homeModelObj?.aiinmentalhealtItemList[
                                                              index] ??
                                                          AiinmentalhealtItemModel();
                                                  return AiinmentalhealtItemWidget(
                                                      model);
                                                });
                                          }))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 93.h, top: 30.v),
                                  child: Text("msg_meet_the_developers".tr,
                                      style: theme.textTheme.titleMedium))
                            ]))))));
  }
}
