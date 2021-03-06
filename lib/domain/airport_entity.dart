class AirportEntity {
  final String uuid;
  
  final String name;

  final String localization;

  final int numberOfRunways;

  final int maxWeight;

  const AirportEntity({
    required this.name,
    required this.localization,
    required this.numberOfRunways,
    required this.maxWeight,
    required this.uuid
  });
}
