import 'dart:convert';

import 'package:infraaero_project/domain/airplane_entity.dart';

class AirplaneModel extends AirplaneEntity {
 AirplaneModel({

  required String uuid,
  required String model,
  required DateTime year,
  required int numberOfSeats,
  required int totalLoadPower,
  required int totalWeight }) : super(uuid: uuid, year: year, numberOfSeats: numberOfSeats, totalLoadPower: totalLoadPower, totalWeight: totalWeight, model:model );
  AirplaneModel copyWith({
    String? uuid,
    String? model,
    DateTime? year,
    int? numberOfSeats,
    int? totalLoadPower,
    int? totalWeight,
  }) {
    return AirplaneModel(
      uuid: uuid ?? this.uuid,
      model: model ?? this.model,
      year: year ?? this.year,
      numberOfSeats: numberOfSeats ?? this.numberOfSeats,
      totalLoadPower: totalLoadPower ?? this.totalLoadPower,
      totalWeight: totalWeight ?? this.totalWeight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'model': model,
      'year': year.millisecondsSinceEpoch,
      'numberOfSeats': numberOfSeats,
      'totalLoadPower': totalLoadPower,
      'totalWeight': totalWeight,
    };
  }

  factory AirplaneModel.fromMap(Map<String, dynamic> map) {
    return AirplaneModel(
      uuid: map['uuid'],
      model: map['model'],
      year: DateTime.fromMillisecondsSinceEpoch(map['year']),
      numberOfSeats: map['numberOfSeats'],
      totalLoadPower: map['totalLoadPower'],
      totalWeight: map['totalWeight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AirplaneModel.fromJson(String source) => AirplaneModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AirplaneModel(uuid: $uuid, model: $model, year: $year, numberOfSeats: $numberOfSeats, totalLoadPower: $totalLoadPower, totalWeight: $totalWeight)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AirplaneModel &&
      other.uuid == uuid &&
      other.model == model &&
      other.year == year &&
      other.numberOfSeats == numberOfSeats &&
      other.totalLoadPower == totalLoadPower &&
      other.totalWeight == totalWeight;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
      model.hashCode ^
      year.hashCode ^
      numberOfSeats.hashCode ^
      totalLoadPower.hashCode ^
      totalWeight.hashCode;
  }
}
