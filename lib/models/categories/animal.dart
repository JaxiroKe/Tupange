import 'package:equatable/equatable.dart';

enum AnimalType {
  baboon,
  buffalo,
  mazda,
  elephant,
  giraffe,
  hippo,
  hyena,
  leopard,
  lion,
  monkey,
  rhino,
  tortoise,
  zebra,
}

extension AnimalTypeParsing on AnimalType {
  String get value => name.split('.').last.toUpperCase();
}

class Animal extends Equatable {
  final AnimalType type;
  final int key;

  const Animal({
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
