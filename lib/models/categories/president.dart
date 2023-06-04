import 'package:equatable/equatable.dart';

enum PresidentType {
  abiy,
  akufo,
  buhari,
  chawire,
  hinchilema,
  mnangagwa,
  museveni,
  ramaphosa,
  ruto,
  suluhu,
  tebboune,
  traore,
  tshisekedi,
}

extension PresidentTypeParsing on PresidentType {
  String get value => name.split('.').last.toUpperCase();
}

class President extends Equatable {
  final PresidentType type;
  final int key;

  const President({
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
