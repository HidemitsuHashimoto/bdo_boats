import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localstore/localstore.dart';

import 'package:bdo_boats/domain/ship.dart';
import 'package:bdo_boats/providers/ship_list/ship_items.dart';

class Ships with ChangeNotifier {
  final _db = Localstore.instance;
  final _shipList = <String, Ship>{};

  Map<String, Ship> get shipList => _shipList;

  Future<void> clean() async {
    await _db.collection('ships').delete();
    _shipList.clear();
    notifyListeners();
  }

  Future<void> getShipList() async {
    for (var ship in shipItems) {
      ship.save();
      _shipList.putIfAbsent(ship.id, () => ship);
    }

    notifyListeners();
  }
}
