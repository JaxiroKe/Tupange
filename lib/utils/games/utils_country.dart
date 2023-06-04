import 'package:flutter/material.dart';

import '../../models/categories/country.dart';
import '../constants/app_assets.dart';
import '../app_localizationsx.dart';

abstract class UtilsCountry {
  static String name(CountryType type, BuildContext context) {
    switch (type) {
      case CountryType.country1:
        return context.l10n!.country1;

      case CountryType.country2:
        return context.l10n!.country2;

      case CountryType.country3:
        return context.l10n!.country3;

      case CountryType.country4:
        return context.l10n!.country4;

      case CountryType.country5:
        return context.l10n!.country5;

      case CountryType.country6:
        return context.l10n!.country6;

      case CountryType.country7:
        return context.l10n!.country7;

      case CountryType.country8:
        return context.l10n!.country8;

      case CountryType.country9:
        return context.l10n!.country8;

      case CountryType.country10:
        return context.l10n!.country10;

      case CountryType.country11:
        return context.l10n!.country11;

      case CountryType.country12:
        return context.l10n!.country13;

      case CountryType.country13:
        return context.l10n!.country13;

      case CountryType.country14:
        return context.l10n!.country14;

      case CountryType.country15:
        return context.l10n!.country15;

      case CountryType.country16:
        return context.l10n!.country16;

      case CountryType.country17:
        return context.l10n!.country17;

      case CountryType.country18:
        return context.l10n!.country18;

      case CountryType.country19:
        return context.l10n!.country19;

      case CountryType.country20:
        return context.l10n!.country20;

      case CountryType.country21:
        return context.l10n!.country21;

      case CountryType.country22:
        return context.l10n!.country22;

      case CountryType.country23:
        return context.l10n!.country23;
    }
  }

  static List<String> facts(CountryType type, BuildContext context) {
    switch (type) {
      case CountryType.country1:
        return [
          context.l10n!.country1Fact1,
          context.l10n!.country1Fact2,
          context.l10n!.country1Fact3
        ];

      case CountryType.country2:
        return [
          context.l10n!.country2Fact1,
          context.l10n!.country2Fact2,
          context.l10n!.country2Fact3
        ];

      case CountryType.country3:
        return [
          context.l10n!.country3Fact1,
          context.l10n!.country3Fact2,
          context.l10n!.country3Fact3
        ];

      case CountryType.country4:
        return [
          context.l10n!.country4Fact1,
          context.l10n!.country4Fact2,
          context.l10n!.country4Fact3
        ];

      case CountryType.country5:
        return [
          context.l10n!.country5Fact1,
          context.l10n!.country5Fact2,
          context.l10n!.country5Fact3
        ];

      case CountryType.country6:
        return [
          context.l10n!.country6Fact1,
          context.l10n!.country6Fact2,
          context.l10n!.country6Fact3
        ];

      case CountryType.country7:
        return [
          context.l10n!.country7Fact1,
          context.l10n!.country7Fact2,
          context.l10n!.country7Fact3
        ];

      case CountryType.country8:
        return [
          context.l10n!.country8Fact1,
          context.l10n!.country8Fact2,
          context.l10n!.country8Fact3
        ];

      case CountryType.country9:
        return [
          context.l10n!.country9Fact1,
          context.l10n!.country9Fact2,
          context.l10n!.country9Fact3
        ];

      case CountryType.country10:
        return [
          context.l10n!.country10Fact1,
          context.l10n!.country10Fact2,
          context.l10n!.country10Fact3
        ];

      case CountryType.country11:
        return [
          context.l10n!.country11Fact1,
          context.l10n!.country11Fact2,
          context.l10n!.country11Fact3
        ];

      case CountryType.country12:
        return [
          context.l10n!.country12Fact1,
          context.l10n!.country12Fact2,
          context.l10n!.country12Fact3
        ];

      case CountryType.country13:
        return [
          context.l10n!.country13Fact1,
          context.l10n!.country13Fact2,
          context.l10n!.country13Fact3
        ];

      case CountryType.country14:
        return [
          context.l10n!.country14Fact1,
          context.l10n!.country14Fact2,
          context.l10n!.country14Fact3
        ];

      case CountryType.country15:
        return [
          context.l10n!.country15Fact1,
          context.l10n!.country15Fact2,
          context.l10n!.country15Fact3
        ];

      case CountryType.country16:
        return [
          context.l10n!.country16Fact1,
          context.l10n!.country16Fact2,
          context.l10n!.country16Fact3
        ];

      case CountryType.country17:
        return [
          context.l10n!.country17Fact1,
          context.l10n!.country17Fact2,
          context.l10n!.country17Fact3
        ];

      case CountryType.country18:
        return [
          context.l10n!.country18Fact1,
          context.l10n!.country18Fact2,
          context.l10n!.country18Fact3
        ];

      case CountryType.country19:
        return [
          context.l10n!.country19Fact1,
          context.l10n!.country19Fact2,
          context.l10n!.country19Fact3
        ];

      case CountryType.country20:
        return [
          context.l10n!.country20Fact1,
          context.l10n!.country20Fact2,
          context.l10n!.country20Fact3
        ];

      case CountryType.country21:
        return [
          context.l10n!.country21Fact1,
          context.l10n!.country21Fact2,
          context.l10n!.country21Fact3
        ];

      case CountryType.country22:
        return [
          context.l10n!.country22Fact1,
          context.l10n!.country22Fact2,
          context.l10n!.country22Fact3
        ];

      case CountryType.country23:
        return [
          context.l10n!.country23Fact1,
          context.l10n!.country23Fact2,
          context.l10n!.country23Fact3
        ];
    }
  }

  static String image(CountryType type) {
    switch (type) {
      case CountryType.country1:
        return AppAssets.country1Image;
      case CountryType.country2:
        return AppAssets.country2Image;

      case CountryType.country3:
        return AppAssets.country3Image;

      case CountryType.country4:
        return AppAssets.country4Image;

      case CountryType.country5:
        return AppAssets.country5Image;

      case CountryType.country6:
        return AppAssets.country6Image;

      case CountryType.country7:
        return AppAssets.country7Image;

      case CountryType.country8:
        return AppAssets.country8Image;

      case CountryType.country9:
        return AppAssets.country9Image;

      case CountryType.country10:
        return AppAssets.country10Image;

      case CountryType.country11:
        return AppAssets.country11Image;

      case CountryType.country12:
        return AppAssets.country12Image;

      case CountryType.country13:
        return AppAssets.country13Image;

      case CountryType.country14:
        return AppAssets.country14Image;

      case CountryType.country15:
        return AppAssets.country15Image;

      case CountryType.country16:
        return AppAssets.country16Image;

      case CountryType.country17:
        return AppAssets.country17Image;

      case CountryType.country18:
        return AppAssets.country18Image;

      case CountryType.country19:
        return AppAssets.country19Image;

      case CountryType.country20:
        return AppAssets.country20Image;

      case CountryType.country21:
        return AppAssets.country21Image;

      case CountryType.country22:
        return AppAssets.country22Image;

      case CountryType.country23:
        return AppAssets.country23Image;
        
    }
  }
}
