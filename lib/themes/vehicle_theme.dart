import '../utils/constants/app_assets.dart';
import '../widgets/layout/puzzle_layout.dart';
import '../widgets/layout/puzzle_layout_delegate.dart';
import 'puzzle_theme.dart';

abstract class VehicleTheme extends PuzzleTheme {
  const VehicleTheme();

  @override
  String get name => 'Vehicle';

  @override
  PuzzleLayout get puzzleLayoutDelegate => PuzzleLayoutDelegate();
}

class KiiraTheme extends VehicleTheme {
  const KiiraTheme();
  @override
  String get assetForTile => AppAssets.kiiraImage;
}

class MahindraTheme extends VehicleTheme {
  const MahindraTheme();
  @override
  String get assetForTile => AppAssets.mahindraImage;
}

class MazdaTheme extends VehicleTheme {
  const MazdaTheme();
  @override
  String get assetForTile => AppAssets.mazdaImage;
}

class MobiusTheme extends VehicleTheme {
  const MobiusTheme();
  @override
  String get assetForTile => AppAssets.mobiusImage;
}

class ToyotaTheme extends VehicleTheme {
  const ToyotaTheme();
  @override
  String get assetForTile => AppAssets.toyotaImage;
}
