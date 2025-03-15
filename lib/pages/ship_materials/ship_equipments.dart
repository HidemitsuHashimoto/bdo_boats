import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/domain/ship.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/routes.dart';
import 'package:bdo_boats/widgets/list_item_container.dart';
import 'package:bdo_boats/providers/ships.dart';

class ShipEquipments extends StatefulWidget {
  const ShipEquipments({super.key});

  @override
  State<ShipEquipments> createState() => _ShipEquipmentsState();
}

class _ShipEquipmentsState extends State<ShipEquipments> {
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
    final ships = [
      'navioMercanteEpheria',
      'contratorpedeiroEpheria',
      'carracaEpheriaGradual',
      'carracaEpheriaEquilibrio',
      'carracaEpheriaEmergencia',
      'carracaEpheriaBravura',
    ];
    Map<String, Ship> shipList = context.watch<Ships>().shipList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcos'),
      ),
      body: shipList.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: ships.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    shipList[ships[index]] != null
                        ? Navigator.pushNamed(
                            context,
                            Routes.shipEquipmentsDetails,
                            arguments: shipList[ships[index]],
                          )
                        : null;
                  },
                  child: ListItemContainer(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/boat_materials/${shipList[ships[index]]!.id}.png',
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            shipList[ships[index]]!.name,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                  ),
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
