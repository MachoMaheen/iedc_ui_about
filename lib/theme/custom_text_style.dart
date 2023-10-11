import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
      );
  static get titleLargeBlack90021 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeDarkerGrotesque =>
      theme.textTheme.titleLarge!.darkerGrotesque.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeDarkerGrotesqueBlack900 =>
      theme.textTheme.titleLarge!.darkerGrotesque.copyWith(
        color: appTheme.black900.withOpacity(0.43),
        fontSize: 22.fSize,
      );
  static get titleLargeDarkerGrotesqueBlack900_1 =>
      theme.textTheme.titleLarge!.darkerGrotesque.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDarkerGrotesqueBlack900_2 =>
      theme.textTheme.titleLarge!.darkerGrotesque.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDarkerGrotesqueBlack900_3 =>
      theme.textTheme.titleLarge!.darkerGrotesque.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallDMSansBlack900 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallDMSansBlueA700 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.blueA700,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get darkerGrotesque {
    return copyWith(
      fontFamily: 'Darker Grotesque',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
