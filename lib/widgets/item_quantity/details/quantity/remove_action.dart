import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:bdo_boats/providers/materials.dart';

class RemoveAction extends StatelessWidget {
  final shipmaterial.Material material;
  const RemoveAction({super.key, required this.material});

  @override
  Widget build(BuildContext context) {
    final materialsContext = context.watch<Materials>();

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.pink,
            blurRadius: 2,
          ),
        ],
      ),
      child: IconButton(
        onPressed: () async {
          final newMaterial = shipmaterial.Material(
            id: material.id,
            name: material.name,
            quantity: material.quantity > 0 ? material.quantity - 1 : 0,
          );
          await newMaterial.edit();
          materialsContext.edit(newMaterial.id, newMaterial);
        },
        color: Colors.white,
        icon: const Icon(Icons.remove),
      ),
    );
  }
}
