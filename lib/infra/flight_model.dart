import 'dart:convert';

import 'package:infraaero_project/domain/flight_entity.dart';

class FlightModel extends FlightEntity {

  const FlightModel ( {required String originAirport,
  required String destinyAirport,
  required String airplane,
  required String company,
  DateTime? takeOffTime,
  DateTime? arrivalTime,
  required String originPlusCode,
  required String destinyPlusCode,
  required int passengers,
  required String uuid,
  required int flightWeight}) : super( uuid: uuid , originAirport: originAirport, destinyAirport: destinyAirport, 
  
  airplane: airplane, company: company, takeOffTime: takeOffTime, arrivalTime: arrivalTime,
  originPlusCode: originPlusCode, destinyPlusCode: destinyPlusCode, passengers: passengers, flightWeight: flightWeight
  );
  FlightModel copyWith({
    String? originAirport,
    String? destinyAirport,
    String? airplane,
    String? company,
    DateTime? takeOffTime,
    DateTime? arrivalTime,
    String? originPlusCode,
    String? destinyPlusCode,
    int? passengers,
    int? flightWeight,
    String? uuid,
  }) {
    return FlightModel(
      originAirport: originAirport ?? this.originAirport,
      destinyAirport: destinyAirport ?? this.destinyAirport,
      airplane: airplane ?? this.airplane,
      company: company ?? this.company,
      takeOffTime: takeOffTime ?? this.takeOffTime,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      originPlusCode: originPlusCode ?? this.originPlusCode,
      destinyPlusCode: destinyPlusCode ?? this.destinyPlusCode,
      passengers: passengers ?? this.passengers,
      flightWeight: flightWeight ?? this.flightWeight,
      uuid: uuid ?? this.uuid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'originAirport': originAirport,
      'destinyAirport': destinyAirport,
      'airplane': airplane,
      'company': company,
      // 'takeOffTime': takeOffTime.millisecondsSinceEpoch,
      // 'arrivalTime': arrivalTime.millisecondsSinceEpoch,
      'originPlusCode': originPlusCode,
      'destinyPlusCode': destinyPlusCode,
      'passengers': passengers,
      'flightWeight': flightWeight,
      'uuid': uuid,
    };
  }

  factory FlightModel.fromMap(Map<String, dynamic> map) {
    return FlightModel(
      originAirport: map['origin'],
      destinyAirport: map['destiny'],
      airplane: map['airplane'],
      company: map['company'],
      // takeOffTime: DateTime.fromMillisecondsSinceEpoch(map['takeOffTime']),
      // arrivalTime: DateTime.fromMillisecondsSinceEpoch(map['arrivalTime']),
      originPlusCode: map['origin_plus_code'],
      destinyPlusCode: map['destiny_plus_code'],
      passengers: map['passengers'],
      flightWeight: map['maxWeight'],
      uuid: map['uuid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FlightModel.fromJson(String source) => FlightModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FlightModel(originAirport: $originAirport, destinyAirport: $destinyAirport, airplane: $airplane, company: $company, takeOffTime: $takeOffTime, arrivalTime: $arrivalTime, originPlusCode: $originPlusCode, destinyPlusCode: $destinyPlusCode, passengers: $passengers, flightWeight: $flightWeight, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FlightModel &&
      other.originAirport == originAirport &&
      other.destinyAirport == destinyAirport &&
      other.airplane == airplane &&
      other.company == company &&
      other.takeOffTime == takeOffTime &&
      other.arrivalTime == arrivalTime &&
      other.originPlusCode == originPlusCode &&
      other.destinyPlusCode == destinyPlusCode &&
      other.passengers == passengers &&
      other.flightWeight == flightWeight &&
      other.uuid == uuid;
  }

  @override
  int get hashCode {
    return originAirport.hashCode ^
      destinyAirport.hashCode ^
      airplane.hashCode ^
      company.hashCode ^
      takeOffTime.hashCode ^
      arrivalTime.hashCode ^
      originPlusCode.hashCode ^
      destinyPlusCode.hashCode ^
      passengers.hashCode ^
      flightWeight.hashCode ^
      uuid.hashCode;
  }
}
