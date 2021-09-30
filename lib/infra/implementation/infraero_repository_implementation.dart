import 'package:infraaero_project/domain/company_entity.dart';
import 'package:infraaero_project/domain/airport_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:infraaero_project/domain/repository/repository.dart';

class InfraeroRepositoryImplementation extends InfraeroProjectRepository{
  @override
  Future<Either<Failures, List<CompanyEntity>>>? getAirplane() {
    // TODO: implement getAirplane
    
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<AirportEntity>>>? getAirports() {
    // TODO: implement getAirports
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<CompanyEntity>>>? getCompanies() {
    // TODO: implement getCompanies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<CompanyEntity>>>? getFlights() {
    // TODO: implement getFlights
    throw UnimplementedError();
  }

  


}