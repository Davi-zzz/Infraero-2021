import 'package:infraaero_project/domain/airport_entity.dart';

class AirportModel extends AirportEntity {
  const AirportModel(
      {required String name,
      required String localization,
      required int numberOfRunways,
      required int maxWeight})
      : super(
            name: name,
            localization: localization,
            numberOfRunways: numberOfRunways,
            maxWeight: maxWeight
        );
}
