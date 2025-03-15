import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:bdo_boats/widgets/item_quantity/details/item_details.dart';
import 'package:bdo_boats/widgets/item_quantity/details/item_image.dart';

class ItemQuantity extends StatelessWidget {
  final String materialId;
  final String image;
  final int? quantity;

  const ItemQuantity({
    super.key,
    required this.materialId,
    required this.image,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    shipmaterial.Material? material =
        context.watch<Materials>().getMaterial(materialId);
    log(material.toString());
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(2, 2),
            color: Colors.black,
          ),
        ],
      ),
      child: material != null
          ? Row(
              children: [
                ItemImage(image: image),
                const SizedBox(width: 10),
                ItemDetails(material: material, quantity: quantity),
              ],
            )
          : null,
    );
  }
}
