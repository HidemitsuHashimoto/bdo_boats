import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/providers/ships.dart';
import 'package:bdo_boats/routes.dart';
import 'package:bdo_boats/widgets/list_item_container.dart';

class ShipTable extends StatefulWidget {
  const ShipTable({super.key});

  @override
  State<ShipTable> createState() => _ShipTableState();
}

class _ShipTableState extends State<ShipTable> {
  final routeList = [
    {'text': 'Barcos', 'route': Routes.shipMaterials, 'image': 'boats'},
    {'text': 'Equipamentos', 'route': Routes.shipEquipments, 'image': 'equips'},
    {
      'text': 'Materiais',
      'route': Routes.shipMaterialsList,
      'image': 'materials'
    },
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<Ships>().getShipList();
      context.read<Materials>().getMaterialsList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabela de barcos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              final route = routeList[index]['route'];

              if (route != null) {
                Navigator.of(context).pushNamed(route);
              }
            },
            child: ListItemContainer(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/boat_routes/${routeList[index]['image']}.png',
                    ),
                    opacity: 0.5,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    routeList[index]['text']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: routeList.length,
      ),
    );
  }
}
