import 'package:bdo_boats/pages/ship_materials/materials_list_autocomplete.dart';
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
  List<shipmaterial.Material> filteredMaterialsValues = [];

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

    List<shipmaterial.Material> currentList = filteredMaterialsValues.isNotEmpty
        ? filteredMaterialsValues
        : materialsValues;

    filter(shipmaterial.Material materialName) {
      if (materialName.name == 'Todos') {
        return setState(() {
          filteredMaterialsValues = materialsValues;
        });
      }

      setState(() {
        filteredMaterialsValues = materialsValues
            .where((item) => item.name
                .toLowerCase()
                .contains(materialName.name.toLowerCase()))
            .toList();
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Materiais de Barcos'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialsListAutocomplete(
                  materialsValues: materialsValues, filter: filter),
            ),
            materialsList.isNotEmpty
                ? Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemCount: currentList.length,
                      itemBuilder: (context, index) {
                        return ItemQuantity(
                          image:
                              'assets/boat_materials/${currentList[index].id}.png',
                          materialId: currentList[index].id,
                          quantity: null,
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ));
  }
}
