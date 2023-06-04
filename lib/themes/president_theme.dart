import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class PresidentTheme extends PuzzleTheme {
  const PresidentTheme();

  @override
  String get name => 'Animal';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class AbiyTheme extends PresidentTheme {
  const AbiyTheme();

  @override
  String get assetForTile => AppAssets.abiyImage;
}

class AkufoTheme extends PresidentTheme {
  const AkufoTheme();

  @override
  String get assetForTile => AppAssets.akufoImage;
}

class BuhariTheme extends PresidentTheme {
  const BuhariTheme();

  @override
  String get assetForTile => AppAssets.buhariImage;
}

class ChawireTheme extends PresidentTheme {
  const ChawireTheme();

  @override
  String get assetForTile => AppAssets.chawireImage;
}

class HinchilemaTheme extends PresidentTheme {
  const HinchilemaTheme();

  @override
  String get assetForTile => AppAssets.hinchilemaImage;
}

class MnangagwaTheme extends PresidentTheme {
  const MnangagwaTheme();

  @override
  String get assetForTile => AppAssets.mnangagwaImage;
}

class MuseveniTheme extends PresidentTheme {
  const MuseveniTheme();

  @override
  String get assetForTile => AppAssets.museveniImage;
}

class RamaphosaTheme extends PresidentTheme {
  const RamaphosaTheme();

  @override
  String get assetForTile => AppAssets.ramaphosaImage;
}

class RutoTheme extends PresidentTheme {
  const RutoTheme();

  @override
  String get assetForTile => AppAssets.rutoImage;
}

class SuluhuTheme extends PresidentTheme {
  const SuluhuTheme();

  @override
  String get assetForTile => AppAssets.suluhuImage;
}

class TebbouneTheme extends PresidentTheme {
  const TebbouneTheme();

  @override
  String get assetForTile => AppAssets.tebbouneImage;
}

class TraoreTheme extends PresidentTheme {
  const TraoreTheme();

  @override
  String get assetForTile => AppAssets.traoreImage;
}

class TshisekediTheme extends PresidentTheme {
  const TshisekediTheme();

  @override
  String get assetForTile => AppAssets.tshisekediImage;
}
