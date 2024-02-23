import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeb2000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XB2000000),
      );
  static get bodyMediumMontserratIndigo90001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.indigo90001,
        fontSize: 13.fSize,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 10.fSize,
      );
  static get bodySmallIndigo900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterGray500 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBluegray800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallPoppinsBluegray900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray900,
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumPoppinsIndigo900 =>
      theme.textTheme.displayMedium!.poppins.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get displayMedium_1 => theme.textTheme.displayMedium!;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.77),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get labelLargeIndigo90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo900Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo900Medium_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900.withOpacity(0.47),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo900Medium_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo900SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterErrorContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsErrorContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsRed400 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.red400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff1f272d => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF1F272D),
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumErrorContainerMedium =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumErrorContainerSemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumIndigo900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumIndigo90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumIndigo90001SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo90001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.77),
      );
  static get labelSmallBluegray700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallGray50 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallIndigo900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigo900.withOpacity(0.74),
      );
  static get labelSmallIndigo900_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.indigo900,
      );
  // Montserrat text style
  static get montserratBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  static get montserratBlack900Medium => TextStyle(
        color: appTheme.black900.withOpacity(0.77),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).montserrat;
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeIndigo900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleLargeIndigo90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo90001,
        fontSize: 23.fSize,
      );
  static get titleLargeIndigo9000121 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo90001,
        fontSize: 21.fSize,
      );
  static get titleLargeIndigo90001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo90001,
      );
  static get titleLargeInterErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsIndigo90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.indigo90001,
      );
  static get titleLargeTeal200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal200,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTeal200Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal200,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
      );
  static get titleMediumInterIndigo900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
      );
  static get titleMediumInterff000000 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratBlack900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratBluegray900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumMontserratErrorContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumMontserratGray100 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.gray100,
      );
  static get titleMediumMontserratIndigo900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratIndigo90001 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo90001,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratIndigo90001Medium =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratIndigo900Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratPrimary =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratWhiteA70016 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumMontserratWhiteA700_1 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPoppinsIndigo900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsIndigo90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRoundedMplus1cGray100 =>
      theme.textTheme.titleMedium!.roundedMplus1c.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRoundedMplus1cWhiteA700 =>
      theme.textTheme.titleMedium!.roundedMplus1c.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900.withOpacity(0.47),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallIndigo90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigo90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo90001,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray600 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsIndigo90001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.indigo90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProTextBlack900 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get robotoCondensed {
    return copyWith(
      fontFamily: 'Roboto Condensed',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roundedMplus1c {
    return copyWith(
      fontFamily: 'Rounded Mplus 1c',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
