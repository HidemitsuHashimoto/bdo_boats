import 'package:bdo_boats/domain/ship.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;

List<double> getPercentValues({
  required Ship ship,
  required List<shipmaterial.Material> materials,
}) {
  final List<double> percentageList = [];
  for (var material in materials) {
    if (material.quantity > (ship.materials[material.id] ?? 0)) {
      percentageList.add(1);
    } else {
      percentageList
          .add(material.quantity / (ship.materials[material.id] ?? 0));
    }
  }
  return percentageList;
}

double calcMedia(List<double> values) {
  return values.reduce((value, element) => value + element) / values.length;
}

double percentCalc({
  Ship? ship,
  required List<shipmaterial.Material> materials,
}) {
  if (ship == null) return 0;

  final percentValues = getPercentValues(ship: ship, materials: materials);
  final media = calcMedia(percentValues);

  return media > 1.0 ? 1.0 : media;
}
