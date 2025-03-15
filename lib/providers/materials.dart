import 'package:flutter/material.dart';
import 'package:localstore/localstore.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:bdo_boats/providers/material_list/items.dart';

class Materials with ChangeNotifier {
  final _db = Localstore.instance;
  final _materialList = <String, shipmaterial.Material>{};

  Map<String, shipmaterial.Material> get materialList => _materialList;

  Future<void> clean() async {
    await _db.collection('ship_materials').delete();
    _materialList.clear();
    notifyListeners();
  }

  Future<void> getMaterialsList() async {
    for (var material in materialItems) {
      final dbMaterialData = await material.save();
      final dbMaterial = shipmaterial.Material.fromMap(dbMaterialData);
      _materialList.putIfAbsent(dbMaterial.id, () => dbMaterial);
    }

    notifyListeners();
  }

  shipmaterial.Material? getMaterial(String id) {
    return _materialList[id];
  }

  void edit(String id, shipmaterial.Material newData) {
    _materialList[id] = newData;
    notifyListeners();
  }
}
