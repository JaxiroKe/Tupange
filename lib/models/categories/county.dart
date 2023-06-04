import 'package:equatable/equatable.dart';

enum CountyType {
  bomet,
  busia,
  homabay,
  kakamega,
  kericho,
  kirinyaga,
  kisii,
  kitui,
  kwale,
  lamu,
  marsabit,
  meru,
  mombasa,
  nairobi,
  nakuru,
  narok,
  nyandarua,
  samburu,
  wajir,
}

extension CountyTypeParsing on CountyType {
  String get value => name.split('.').last.toUpperCase();
}

class County extends Equatable {
  final CountyType type;
  final int key;

  const County({
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
