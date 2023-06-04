import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class CountyTheme extends PuzzleTheme {
  const CountyTheme();

  @override
  String get name => 'County';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class BometTheme extends CountyTheme {
  const BometTheme();

  @override
  String get assetForTile => AppAssets.bometImage;
}

class BusiaTheme extends CountyTheme {
  const BusiaTheme();

  @override
  String get assetForTile => AppAssets.busiaImage;
}

class HomabayTheme extends CountyTheme {
  const HomabayTheme();

  @override
  String get assetForTile => AppAssets.homabayImage;
}

class KakamegaTheme extends CountyTheme {
  const KakamegaTheme();

  @override
  String get assetForTile => AppAssets.kakamegaImage;
}

class KerichoTheme extends CountyTheme {
  const KerichoTheme();

  @override
  String get assetForTile => AppAssets.kerichoImage;
}

class KirinyagaTheme extends CountyTheme {
  const KirinyagaTheme();

  @override
  String get assetForTile => AppAssets.kirinyagaImage;
}

class KisiiTheme extends CountyTheme {
  const KisiiTheme();

  @override
  String get assetForTile => AppAssets.kisiiImage;
}

class KituiTheme extends CountyTheme {
  const KituiTheme();

  @override
  String get assetForTile => AppAssets.kituiImage;
}

class KwaleTheme extends CountyTheme {
  const KwaleTheme();

  @override
  String get assetForTile => AppAssets.kwaleImage;
}

class LamuTheme extends CountyTheme {
  const LamuTheme();

  @override
  String get assetForTile => AppAssets.lamuImage;
}

class MarsabitTheme extends CountyTheme {
  const MarsabitTheme();

  @override
  String get assetForTile => AppAssets.marsabitImage;
}

class MeruTheme extends CountyTheme {
  const MeruTheme();

  @override
  String get assetForTile => AppAssets.meruImage;
}

class MombasaTheme extends CountyTheme {
  const MombasaTheme();

  @override
  String get assetForTile => AppAssets.mombasaImage;
}

class NairobiTheme extends CountyTheme {
  const NairobiTheme();

  @override
  String get assetForTile => AppAssets.nairobiImage;
}

class NakuruTheme extends CountyTheme {
  const NakuruTheme();

  @override
  String get assetForTile => AppAssets.nakuruImage;
}

class NarokTheme extends CountyTheme {
  const NarokTheme();

  @override
  String get assetForTile => AppAssets.narokImage;
}

class NyandaruaTheme extends CountyTheme {
  const NyandaruaTheme();

  @override
  String get assetForTile => AppAssets.nyandaruaImage;
}

class SamburuTheme extends CountyTheme {
  const SamburuTheme();

  @override
  String get assetForTile => AppAssets.samburuImage;
}

class WajirTheme extends CountyTheme {
  const WajirTheme();

  @override
  String get assetForTile => AppAssets.wajirImage;
}
