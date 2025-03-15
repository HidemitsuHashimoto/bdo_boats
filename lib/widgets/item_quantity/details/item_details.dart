import 'package:flutter/material.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:bdo_boats/widgets/item_quantity/details/item_name.dart';
import 'package:bdo_boats/widgets/item_quantity/details/quantity/quantity_details.dart';

class ItemDetails extends StatelessWidget {
  final shipmaterial.Material material;
  final int? quantity;

  const ItemDetails({
    super.key,
    required this.material,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemName(name: material.name),
        QuantityDetails(
          materialId: material.id,
          quantity: quantity,
        ),
      ],
    );
  }
}
