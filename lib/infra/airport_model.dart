import 'dart:convert';

import 'package:infraaero_project/domain/airport_entity.dart';

class AirportModel extends AirportEntity {
  const AirportModel({
    required String uuid,
    required String name,
    required String localization,
    required int numberOfRunways,
    required int maxWeight
  })
      : super(
            uuid: uuid,
            name: name,
            localization: localization,
            numberOfRunways: numberOfRunways,
            maxWeight: maxWeight);


  AirportModel copyWith({
    String? uuid,
    String? name,
    String? localization,
    int? numberOfRunways,
    int? maxWeight,
  }) {
    return AirportModel(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      localization: localization ?? this.localization,
      numberOfRunways: numberOfRunways ?? this.numberOfRunways,
      maxWeight: maxWeight ?? this.maxWeight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'name': name,
      'localization': localization,
      'numberOfRunways': numberOfRunways,
      'maxWeight': maxWeight,
    };
  }

  factory AirportModel.fromMap(Map<String, dynamic> map) {
    return AirportModel(
      uuid: map['uuid'],
      name: map['name'],
      localization: map['localization'],
      numberOfRunways: map['number_of_runways'],
      maxWeight: map['max_weight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AirportModel.fromJson(String source) => AirportModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AirportModel(uuid: $uuid, name: $name, localization: $localization, numberOfRunways: $numberOfRunways, maxWeight: $maxWeight)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AirportModel &&
      other.uuid == uuid &&
      other.name == name &&
      other.localization == localization &&
      other.numberOfRunways == numberOfRunways &&
      other.maxWeight == maxWeight;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
      name.hashCode ^
      localization.hashCode ^
      numberOfRunways.hashCode ^
      maxWeight.hashCode;
  }
}
