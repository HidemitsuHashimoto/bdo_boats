import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:localstore/localstore.dart';
import 'package:bdo_boats/providers/materials.dart';

class AddAction extends StatelessWidget {
  final shipmaterial.Material material;
  final db = Localstore.instance;

  AddAction({super.key, required this.material});

  @override
  Widget build(BuildContext context) {
    final materialsContext = context.watch<Materials>();

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () async {
              final newMaterial = shipmaterial.Material(
                id: material.id,
                name: material.name,
                quantity: material.quantity + 1,
              );
              await newMaterial.edit();
              materialsContext.edit(newMaterial.id, newMaterial);
            },
            color: Colors.white,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
