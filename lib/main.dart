import 'package:bdo_boats/pages/ship_details/ship_details.dart';
import 'package:bdo_boats/pages/ship_details/ship_equipments_details.dart';
import 'package:bdo_boats/pages/ship_materials/materials_list.dart';
import 'package:bdo_boats/pages/ship_materials/ship_equipments.dart';
import 'package:bdo_boats/pages/ship_materials/ship_materials.dart';
import 'package:bdo_boats/pages/ship_table/ship_table.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/providers/ships.dart';
import 'package:bdo_boats/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Ships()),
        ChangeNotifierProvider(create: (_) => Materials()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.shipTable,
      routes: {
        Routes.shipTable: (_) => const ShipTable(),
        Routes.shipMaterials: (_) => const ShipMaterials(),
        Routes.shipEquipments: (_) => const ShipEquipments(),
        Routes.shipEquipmentsDetails: (context) =>
            const ShipEquipmentsDetails(),
        Routes.shipMaterialsList: (_) => const MaterialsList(),
        Routes.shipDetails: (context) => const ShipDetails(),
      },
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: Color(0xFF422c05),
          secondary: Color(0XFFe9a21e),
          onSecondary: Color(0XFFe9a21e),
          error: Colors.red,
          onError: Colors.red,
          surface: Color.fromARGB(255, 95, 154, 243),
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
    );
  }
}
