import 'package:equatable/equatable.dart';

enum CountryType {
  algeria,
  botswana,
  brazil,
  china,
  drc,
  egypt,
  india,
  kenya,
  morocco,
  namibia,
  nigeria,
  pakistan,
  qatar,
  russia,
  sa,
  singapore,
  sudan,
  tanzania,
  tunisia,
  uae,
  uganda,
  ukraine,
  usa,
}

extension CountryTypeParsing on CountryType {
  String get value => name.split('.').last.toUpperCase();
}

class Country extends Equatable {
  final CountryType type;
  final int key;

  const Country({
    required this.key,
    required this.type,
  });

  String get name => type.name;

  @override
  List<Object?> get props => [type, key];

  @override
  String toString() {
    return type.toString().toUpperCase();
  }
}
