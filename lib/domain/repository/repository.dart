  import 'package:dartz/dartz.dart';
import 'package:infraaero_project/domain/airport_entity.dart';
import 'package:infraaero_project/domain/company_entity.dart';

enum Failures {
    airplaneError,
    airportError,
    comapanyError,
    flightError
  }
  enum ConnectionInfo {
    connectionFail,

  }
abstract class InfraeroProjectRepository {

//Airport section
  Future<Either<Failures, List<AirportEntity>>>? getAirports();
// end airport
//companies section 
  Future<Either<Failures, List<CompanyEntity>>>? getCompanies();
// end companies
// flights section
  Future<Either<Failures, List<CompanyEntity>>>? getFlights();
// end flights


  
}
