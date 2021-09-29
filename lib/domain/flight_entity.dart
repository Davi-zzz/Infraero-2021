class FlightEntity {

  final int originAirport;
  final int destinyAirport;
  final int airplane;
  final int company;
  final DateTime takeOffTime;
  final DateTime arrivalTime;
  final String originPlusCode;
  final String destinyPlusCode;
  final int passengers;
  final int flightWeight;

  const FlightEntity({ required this.passengers,  required this.flightWeight, required this.originAirport,  required this.destinyAirport,  required this.airplane,  required this.company,  required this.takeOffTime,  required this.arrivalTime,  required this.originPlusCode,  required this.destinyPlusCode});

  

}