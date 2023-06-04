import '../../models/categories/country.dart';
import '../../models/categories/planet.dart';
import '../../models/puzzle.dart';
import '../../themes/country_theme.dart';
import '../../themes/planet_theme.dart';
import '../../themes/puzzle_theme.dart';

class AppConstants {
  AppConstants._();

  static const appTitle = 'Tupange';

  static const kFontFamily = 'ComicSans';

  static const Map<PuzzleLevel, int> kPuzzleLevel = {
    PuzzleLevel.easy: 3,
    PuzzleLevel.medium: 4,
    PuzzleLevel.hard: 5,
  };

  static const Map<PuzzleCategory, int> kPuzzleCategory = {
    PuzzleCategory.planets: 1,
  };

  static const List<Planet> planets = [
    Planet(key: 1, type: PlanetType.mercury),
    Planet(key: 2, type: PlanetType.venus),
    Planet(key: 3, type: PlanetType.earth),
    Planet(key: 4, type: PlanetType.mars),
    Planet(key: 5, type: PlanetType.jupiter),
    Planet(key: 6, type: PlanetType.saturn),
    Planet(key: 7, type: PlanetType.uranus),
    Planet(key: 8, type: PlanetType.neptune),
  ];

  static const List<Country> countries = [
    Country(key: 1, type: CountryType.kenya),
    Country(key: 2, type: CountryType.tanzania),
    Country(key: 3, type: CountryType.uganda),
  ];

  static const Map<PlanetType, PuzzleTheme> planetThemeMap = {
    PlanetType.mercury: MercuryTheme(),
    PlanetType.venus: VenusTheme(),
    PlanetType.earth: EarthTheme(),
    PlanetType.mars: MarsTheme(),
    PlanetType.jupiter: JupiterTheme(),
    PlanetType.saturn: SaturnTheme(),
    PlanetType.uranus: UranusTheme(),
    PlanetType.neptune: NeptuneTheme(),
    PlanetType.pluto: PlutoTheme(),
  };

  static const Map<CountryType, PuzzleTheme> countryThemeMap = {
    CountryType.kenya: KenyaTheme(),
    CountryType.tanzania: TanzaniaTheme(),
    CountryType.uganda: UgandaTheme(),
  };
}
