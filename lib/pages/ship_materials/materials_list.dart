import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:bdo_boats/widgets/item_quantity/item_quantity.dart';

class MaterialsList extends StatefulWidget {
  const MaterialsList({super.key});

  @override
  State<MaterialsList> createState() => _MaterialsListState();
}

class _MaterialsListState extends State<MaterialsList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<Materials>().getMaterialsList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, shipmaterial.Material> materialsList =
        context.watch<Materials>().materialList;

    List<shipmaterial.Material> materialsValues = materialsList.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Materiais de Barcos'),
      ),
      body: materialsList.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: materialsValues.length,
              itemBuilder: (context, index) {
                return ItemQuantity(
                  image:
                      'assets/boat_materials/${materialsValues[index].id}.png',
                  materialId: materialsValues[index].id,
                  quantity: null,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
            )
          : null,
    );
  }
}
