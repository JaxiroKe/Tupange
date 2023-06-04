import 'package:flutter/material.dart';

import '../models/categories/planet.dart';
import 'constants/app_assets.dart';
import 'app_localizationsx.dart';

abstract class UtilsPlanet {
  
  static String name(PlanetType type, BuildContext context) {
    switch (type) {
      case PlanetType.mercury:
        return context.l10n!.mercury;

      case PlanetType.venus:
        return context.l10n!.venus;

      case PlanetType.earth:
        return context.l10n!.earth;

      case PlanetType.mars:
        return context.l10n!.mars;

      case PlanetType.jupiter:
        return context.l10n!.jupiter;

      case PlanetType.saturn:
        return context.l10n!.saturn;

      case PlanetType.uranus:
        return context.l10n!.uranus;

      case PlanetType.neptune:
        return context.l10n!.neptune;

      case PlanetType.pluto:
        return context.l10n!.pluto;
    }
  }

  static List<String> facts(PlanetType type, BuildContext context) {
    switch (type) {
      case PlanetType.mercury:
        return [
          context.l10n!.mercuryFact1,
          context.l10n!.mercuryFact2,
          context.l10n!.mercuryFact3
        ];

      case PlanetType.venus:
        return [
          context.l10n!.venusFact1,
          context.l10n!.venusFact2,
          context.l10n!.venusFact3
        ];

      case PlanetType.earth:
        return [
          context.l10n!.earthFact1,
          context.l10n!.earthFact2,
          context.l10n!.earthFact3
        ];

      case PlanetType.mars:
        return [
          context.l10n!.marsFact1,
          context.l10n!.marsFact2,
          context.l10n!.marsFact3
        ];

      case PlanetType.jupiter:
        return [
          context.l10n!.jupiterFact1,
          context.l10n!.jupiterFact2,
          context.l10n!.jupiterFact3
        ];

      case PlanetType.saturn:
        return [
          context.l10n!.saturnFact1,
          context.l10n!.saturnFact2,
          context.l10n!.saturnFact3
        ];

      case PlanetType.uranus:
        return [
          context.l10n!.uranusFact1,
          context.l10n!.uranusFact2,
          context.l10n!.uranusFact3
        ];

      case PlanetType.neptune:
        return [
          context.l10n!.neptuneFact1,
          context.l10n!.neptuneFact2,
          context.l10n!.neptuneFact3
        ];

      case PlanetType.pluto:
        return [
          context.l10n!.plutoFact1,
          context.l10n!.plutoFact2,
          context.l10n!.plutoFact3
        ];
    }
  }

  static String image(PlanetType type) {
    switch (type) {
      case PlanetType.mercury:
        return AppAssets.mercuryImage;

      case PlanetType.venus:
        return AppAssets.venusImage;

      case PlanetType.earth:
        return AppAssets.earthImage;

      case PlanetType.mars:
        return AppAssets.marsImage;

      case PlanetType.jupiter:
        return AppAssets.jupiterImage;

      case PlanetType.saturn:
        return AppAssets.saturnImage;

      case PlanetType.uranus:
        return AppAssets.uranusImage;

      case PlanetType.neptune:
        return AppAssets.neptuneImage;

      case PlanetType.pluto:
        return AppAssets.plutoImage;
    }
  }

}
