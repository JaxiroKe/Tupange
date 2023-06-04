import 'package:equatable/equatable.dart';

enum PlanetType {
  mercury,
  venus,
  earth,
  mars,
  jupiter,
  saturn,
  uranus,
  neptune,
  pluto,
}

extension PlanetTypeParsing on PlanetType {
  String get value => name.split('.').last.toUpperCase();
}

class Planet extends Equatable {
  final PlanetType type;
  final int key;

  const Planet({
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
