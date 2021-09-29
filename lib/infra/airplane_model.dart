import 'package:infraaero_project/domain/airplane_entity.dart';


class AirplaneModel extends AirplaneEntity {

 AirplaneModel({

  required String model,
  required DateTime year,
  required int numberOfSeats,
  required int totalLoadPower,
  required int totalWeight }) : super(year: year, numberOfSeats: numberOfSeats, totalLoadPower: totalLoadPower, totalWeight: totalWeight, model:model );

  


}