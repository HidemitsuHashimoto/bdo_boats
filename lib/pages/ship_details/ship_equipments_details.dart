import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import 'package:bdo_boats/domain/ship.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/providers/ships.dart';
import 'package:bdo_boats/utils/percent_calc.dart';
import 'package:bdo_boats/widgets/material_list.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;

class ShipEquipmentsUpgrade {
  static List<String> list(String id) {
    return switch (id) {
      'navioMercanteEpheria' => [
          'navioMercanteEpheriaProaDragaoNegro',
          'navioMercanteEpheriaCascoRefinado',
          'navioMercanteEpheriaCanhaoMeina',
          'navioMercanteEpheriaVelaCamada',
        ],
      'contratorpedeiroEpheria' => [
          'contratorpedeiroEpheriaProaDragaoNegro',
          'contratorpedeiroEpheriaCascoRefinado',
          'contratorpedeiroEpheriaCanhaoMeina',
          'contratorpedeiroEpheriaVelaCamada',
        ],
      'carracaEpheriaGradual' => [
          'carracaEpheriaGradualProaShiro',
          'carracaEpheriaGradualCascoNegroShiro',
          'carracaEpheriaGradualCanhaoShiro',
          'carracaEpheriaGradualVelaShiro',
        ],
      'carracaEpheriaEquilibrio' => [
          'carracaEpheriaEquilibrioProaShiro',
          'carracaEpheriaEquilibrioCascoNegroShiro',
          'carracaEpheriaEquilibrioCanhaoShiro',
          'carracaEpheriaEquilibrioVelaShiro',
        ],
      'carracaEpheriaEmergencia' => [
          'carracaEpheriaAscensaoProaShiro',
          'carracaEpheriaAscensaoCascoNegroShiro',
          'carracaEpheriaAscensaoCanhaoShiro',
          'carracaEpheriaAscensaoVelaShiro',
        ],
      'carracaEpheriaBravura' => [
          'carracaEpheriaBravuraProaShiro',
          'carracaEpheriaBravuraCascoNegroShiro',
          'carracaEpheriaBravuraCanhaoShiro',
          'carracaEpheriaBravuraVelaShiro',
        ],
      _ => [],
    };
  }
}

class ShipEquipmentsDetails extends StatefulWidget {
  const ShipEquipmentsDetails({super.key});

  @override
  State<ShipEquipmentsDetails> createState() => _ShipEquipmentsDetailsState();
}

class Data {
  String shipName;
  bool isExpanded;
  Data({
    required this.shipName,
    required this.isExpanded,
  });
}

class _ShipEquipmentsDetailsState extends State<ShipEquipmentsDetails> {
  final Map<String, bool> _data = {};

  get index => null;

  @override
  Widget build(BuildContext context) {
    final ship = ModalRoute.of(context)!.settings.arguments as Ship;
    final shipUpgradeList = ShipEquipmentsUpgrade.list(ship.id);
    Map<String, Ship> shipList = context.watch<Ships>().shipList;

    return Scaffold(
      appBar: AppBar(
        title: Text(ship.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Pode evoluir para:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .8,
              child: SingleChildScrollView(
                child: ExpansionPanelList(
                  expansionCallback: (panelIndex, isExpanded) {
                    final shipKey = shipUpgradeList[panelIndex];
                    setState(() {
                      _data[shipKey] = isExpanded;
                    });
                  },
                  children: shipUpgradeList.map<ExpansionPanel>((String item) {
                    final ship = shipList[item];
                    final shipMaterialsKeys = ship?.materials.keys ?? {};
                    final List<shipmaterial.Material> materials = [];

                    for (var key in shipMaterialsKeys) {
                      final item = context.watch<Materials>().getMaterial(key);
                      if (item != null) materials.add(item);
                    }

                    final percentValue =
                        percentCalc(ship: ship, materials: materials);

                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              leading: Image(
                                image: AssetImage(
                                  'assets/boat_materials/$item.png',
                                ),
                                width: 40,
                              ),
                              title: Text(ship!.name),
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2500,
                              percent: percentValue,
                              center: Text(
                                  "${(percentValue * 100).toStringAsFixed(2)}%"),
                              progressColor: Colors.green,
                            )
                          ],
                        );
                      },
                      body: SizedBox(
                        child: ship?.materials != null
                            ? MaterialList(materials: ship!.materials)
                            : null,
                      ),
                      isExpanded: _data[item] ?? false,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
