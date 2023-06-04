import 'package:flutter/material.dart';

import '../models/categories/country.dart';
import 'constants/app_assets.dart';
import 'app_localizationsx.dart';

abstract class UtilsCountry {
  static String name(CountryType type, BuildContext context) {
    switch (type) {
      case CountryType.algeria:
        return context.l10n!.uganda;

      case CountryType.botswana:
        return context.l10n!.uganda;

      case CountryType.brazil:
        return context.l10n!.uganda;

      case CountryType.china:
        return context.l10n!.uganda;

      case CountryType.drc:
        return context.l10n!.uganda;

      case CountryType.egypt:
        return context.l10n!.uganda;

      case CountryType.india:
        return context.l10n!.uganda;

      case CountryType.kenya:
        return context.l10n!.kenya;

      case CountryType.morocco:
        return context.l10n!.uganda;

      case CountryType.namibia:
        return context.l10n!.uganda;

      case CountryType.nigeria:
        return context.l10n!.uganda;

      case CountryType.pakistan:
        return context.l10n!.uganda;

      case CountryType.qatar:
        return context.l10n!.uganda;

      case CountryType.russia:
        return context.l10n!.uganda;

      case CountryType.sa:
        return context.l10n!.uganda;

      case CountryType.singapore:
        return context.l10n!.uganda;

      case CountryType.sudan:
        return context.l10n!.uganda;

      case CountryType.tanzania:
        return context.l10n!.tanzania;

      case CountryType.tunisia:
        return context.l10n!.uganda;

      case CountryType.uae:
        return context.l10n!.uganda;

      case CountryType.uganda:
        return context.l10n!.uganda;

      case CountryType.ukraine:
        return context.l10n!.uganda;

      case CountryType.usa:
        return context.l10n!.uganda;
    }
  }

  static List<String> facts(CountryType type, BuildContext context) {
    switch (type) {
      case CountryType.algeria:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.botswana:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.brazil:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.china:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.drc:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.egypt:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.india:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.kenya:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.morocco:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.namibia:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.nigeria:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.pakistan:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.qatar:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.russia:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.sa:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.singapore:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.sudan:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.tanzania:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.tunisia:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.uae:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.uganda:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.ukraine:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];

      case CountryType.usa:
        return [
          context.l10n!.kenyaFact1,
          context.l10n!.kenyaFact2,
          context.l10n!.kenyaFact3
        ];
    }
  }

  static String image(CountryType type) {
    switch (type) {
      case CountryType.algeria:
        return AppAssets.algeriaImage;
        
      case CountryType.botswana:
        return AppAssets.botswanaImage;
        
      case CountryType.brazil:
        return AppAssets.brazilImage;
        
      case CountryType.china:
        return AppAssets.chinaImage;
        
      case CountryType.drc:
        return AppAssets.drcImage;
        
      case CountryType.egypt:
        return AppAssets.egyptImage;
        
      case CountryType.india:
        return AppAssets.indiaImage;
        
      case CountryType.kenya:
        return AppAssets.kenyaImage;
        
      case CountryType.morocco:
        return AppAssets.moroccoImage;
        
      case CountryType.namibia:
        return AppAssets.namibiaImage;
        
      case CountryType.nigeria:
        return AppAssets.nigeriaImage;
        
      case CountryType.pakistan:
        return AppAssets.pakistanImage;
        
      case CountryType.qatar:
        return AppAssets.qatarImage;
        
      case CountryType.russia:
        return AppAssets.russiaImage;
        
      case CountryType.sa:
        return AppAssets.saImage;
        
      case CountryType.singapore:
        return AppAssets.singaporeImage;
        
      case CountryType.sudan:
        return AppAssets.sudanImage;
        
      case CountryType.tanzania:
        return AppAssets.tanzaniaImage;
        
      case CountryType.tunisia:
        return AppAssets.tunisiaImage;
        
      case CountryType.uae:
        return AppAssets.uaeImage;
        
      case CountryType.uganda:
        return AppAssets.ugandaImage;
        
      case CountryType.ukraine:
        return AppAssets.ukraineImage;
        
      case CountryType.usa:
        return AppAssets.usaImage;
        
    }
  }
}
