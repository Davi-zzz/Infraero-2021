class FlightEntity {
  final String originAirport;
  final String destinyAirport;
  final String airplane;
  final String company;
  final DateTime? takeOffTime;
  final DateTime? arrivalTime;
  final String originPlusCode;
  final String destinyPlusCode;
  final int passengers;
  final int flightWeight;
  final String uuid;

  const FlightEntity({
    required this.uuid,
    required this.passengers,
    required this.flightWeight,
    required this.originAirport,
    required this.destinyAirport,
    required this.airplane,
    required this.company,
    this.takeOffTime,
    this.arrivalTime,
    required this.originPlusCode,
    required this.destinyPlusCode,
  });
}
