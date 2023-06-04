import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class AnimalTheme extends PuzzleTheme {
  const AnimalTheme();

  @override
  String get name => 'Animal';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class BaboonTheme extends AnimalTheme {
  const BaboonTheme();

  @override
  String get assetForTile => AppAssets.baboonImage;
}

class BuffaloTheme extends AnimalTheme {
  const BuffaloTheme();

  @override
  String get assetForTile => AppAssets.buffaloImage;
}

class MazdaTheme extends AnimalTheme {
  const MazdaTheme();

  @override
  String get assetForTile => AppAssets.mazdaImage;
}

class ElephantTheme extends AnimalTheme {
  const ElephantTheme();

  @override
  String get assetForTile => AppAssets.elephantImage;
}

class GiraffeTheme extends AnimalTheme {
  const GiraffeTheme();

  @override
  String get assetForTile => AppAssets.giraffeImage;
}

class HippoTheme extends AnimalTheme {
  const HippoTheme();

  @override
  String get assetForTile => AppAssets.hippoImage;
}

class HyenaTheme extends AnimalTheme {
  const HyenaTheme();

  @override
  String get assetForTile => AppAssets.hyenaImage;
}

class LeopardTheme extends AnimalTheme {
  const LeopardTheme();

  @override
  String get assetForTile => AppAssets.leopardImage;
}

class LionTheme extends AnimalTheme {
  const LionTheme();

  @override
  String get assetForTile => AppAssets.lionImage;
}

class MonkeyTheme extends AnimalTheme {
  const MonkeyTheme();

  @override
  String get assetForTile => AppAssets.monkeyImage;
}

class RhinoTheme extends AnimalTheme {
  const RhinoTheme();

  @override
  String get assetForTile => AppAssets.rhinoImage;
}

class TortoiseTheme extends AnimalTheme {
  const TortoiseTheme();

  @override
  String get assetForTile => AppAssets.tortoiseImage;
}

class ZebraTheme extends AnimalTheme {
  const ZebraTheme();

  @override
  String get assetForTile => AppAssets.zebraImage;
}
