import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeSourceSansProBluegray90001 =>
      theme.textTheme.bodyLarge!.sourceSansPro.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyMediumIndigoA100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA100,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGreen400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          12,
        ),
      );
  // Headline text style
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          26,
        ),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray40001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleLargeGreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          20,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumArialWhiteA700 =>
      theme.textTheme.titleMedium!.arial.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterLightblueA400 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.lightBlueA400,
        fontSize: getFontSize(
          17,
        ),
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallGray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          14,
        ),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get sourceSansPro {
    return copyWith(
      fontFamily: 'Source Sans Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
