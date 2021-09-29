import 'package:infraaero_project/domain/flight_entity.dart';

class FlightModel extends FlightEntity {

  const FlightModel ( {required int originAirport,
  required int destinyAirport,
  required int airplane,
  required int company,
  required DateTime takeOffTime,
  required DateTime arrivalTime,
  required String originPlusCode,
  required String destinyPlusCode,
  required int passengers,
  required int flightWeight}) : super( originAirport: originAirport, destinyAirport: destinyAirport, 
  airplane: airplane, company: company, takeOffTime: takeOffTime, arrivalTime: arrivalTime,
  originPlusCode: originPlusCode, destinyPlusCode: destinyPlusCode, passengers: passengers, flightWeight: flightWeight
  );




}