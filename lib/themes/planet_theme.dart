import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class PlanetTheme extends PuzzleTheme {
  const PlanetTheme();

  @override
  String get name => 'Planet';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class MercuryTheme extends PlanetTheme {
  const MercuryTheme();

  @override
  String get assetForTile => AppAssets.mercuryImage;
}

class VenusTheme extends PlanetTheme {
  const VenusTheme();

  @override
  String get assetForTile => AppAssets.venusImage;
}

class EarthTheme extends PlanetTheme {
  const EarthTheme();

  @override
  String get assetForTile => AppAssets.earthImage;
}

class MarsTheme extends PlanetTheme {
  const MarsTheme();

  @override
  String get assetForTile => AppAssets.marsImage;
}

class JupiterTheme extends PlanetTheme {
  const JupiterTheme();

  @override
  String get assetForTile => AppAssets.jupiterImage;
}

class SaturnTheme extends PlanetTheme {
  const SaturnTheme();

  @override
  String get assetForTile => AppAssets.saturnImage;
}

class UranusTheme extends PlanetTheme {
  const UranusTheme();

  @override
  String get assetForTile => AppAssets.uranusImage;
}

class NeptuneTheme extends PlanetTheme {
  const NeptuneTheme();

  @override
  String get assetForTile => AppAssets.neptuneImage;
}

class PlutoTheme extends PlanetTheme {
  const PlutoTheme();

  @override
  String get assetForTile => AppAssets.plutoImage;
}
