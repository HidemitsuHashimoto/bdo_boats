import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/domain/ship.dart';
import 'package:bdo_boats/routes.dart';
import 'package:bdo_boats/widgets/list_item_container.dart';
import 'package:bdo_boats/providers/ships.dart';

class ShipMaterials extends StatefulWidget {
  const ShipMaterials({super.key});

  @override
  State<ShipMaterials> createState() => _ShipMaterialsState();
}

class _ShipMaterialsState extends State<ShipMaterials> {
  @override
  Widget build(BuildContext context) {
    final ships = [
      'veleiroBartali',
      'veleiroEpheria',
      'fragataEpheria',
      'navioMercanteEpheria',
      'contratorpedeiroEpheria',
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
                            Routes.shipDetails,
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
