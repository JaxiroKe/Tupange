import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class CountryTheme extends PuzzleTheme {
  const CountryTheme();

  @override
  String get name => 'Country';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class AlgeriaTheme extends CountryTheme {
  const AlgeriaTheme();

  @override
  String get assetForTile => AppAssets.algeriaImage;
}

class BotswanaTheme extends CountryTheme {
  const BotswanaTheme();

  @override
  String get assetForTile => AppAssets.botswanaImage;
}

class BrazilTheme extends CountryTheme {
  const BrazilTheme();

  @override
  String get assetForTile => AppAssets.brazilImage;
}

class ChinaTheme extends CountryTheme {
  const ChinaTheme();

  @override
  String get assetForTile => AppAssets.chinaImage;
}

class DrcTheme extends CountryTheme {
  const DrcTheme();

  @override
  String get assetForTile => AppAssets.drcImage;
}

class EgyptTheme extends CountryTheme {
  const EgyptTheme();

  @override
  String get assetForTile => AppAssets.egyptImage;
}

class IndiaTheme extends CountryTheme {
  const IndiaTheme();

  @override
  String get assetForTile => AppAssets.indiaImage;
}

class KenyaTheme extends CountryTheme {
  const KenyaTheme();

  @override
  String get assetForTile => AppAssets.kenyaImage;
}

class MoroccoTheme extends CountryTheme {
  const MoroccoTheme();

  @override
  String get assetForTile => AppAssets.moroccoImage;
}

class NamibiaTheme extends CountryTheme {
  const NamibiaTheme();

  @override
  String get assetForTile => AppAssets.namibiaImage;
}

class NigeriaTheme extends CountryTheme {
  const NigeriaTheme();

  @override
  String get assetForTile => AppAssets.nigeriaImage;
}

class PakistanTheme extends CountryTheme {
  const PakistanTheme();

  @override
  String get assetForTile => AppAssets.pakistanImage;
}

class QatarTheme extends CountryTheme {
  const QatarTheme();

  @override
  String get assetForTile => AppAssets.qatarImage;
}

class RussiaTheme extends CountryTheme {
  const RussiaTheme();

  @override
  String get assetForTile => AppAssets.russiaImage;
}

class SaTheme extends CountryTheme {
  const SaTheme();

  @override
  String get assetForTile => AppAssets.saImage;
}

class SingaporeTheme extends CountryTheme {
  const SingaporeTheme();

  @override
  String get assetForTile => AppAssets.singaporeImage;
}

class SudanTheme extends CountryTheme {
  const SudanTheme();

  @override
  String get assetForTile => AppAssets.sudanImage;
}

class TanzaniaTheme extends CountryTheme {
  const TanzaniaTheme();

  @override
  String get assetForTile => AppAssets.tanzaniaImage;
}

class TunisiaTheme extends CountryTheme {
  const TunisiaTheme();

  @override
  String get assetForTile => AppAssets.tunisiaImage;
}

class UaeTheme extends CountryTheme {
  const UaeTheme();

  @override
  String get assetForTile => AppAssets.uaeImage;
}

class UgandaTheme extends CountryTheme {
  const UgandaTheme();

  @override
  String get assetForTile => AppAssets.ugandaImage;
}

class UkraineTheme extends CountryTheme {
  const UkraineTheme();

  @override
  String get assetForTile => AppAssets.ukraineImage;
}

class UsaTheme extends CountryTheme {
  const UsaTheme();

  @override
  String get assetForTile => AppAssets.usaImage;
}
