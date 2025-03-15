import 'package:flutter/material.dart';
import 'package:bdo_boats/widgets/item_quantity/item_quantity.dart';

class MaterialList extends StatelessWidget {
  final Map<String, int> materials;

  const MaterialList({super.key, required this.materials});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: [
        ...materials.keys.map(
          (e) => ItemQuantity(
            image: 'assets/boat_materials/$e.png',
            materialId: e,
            quantity: materials[e]!,
          ),
        ),
      ],
    );
  }
}
