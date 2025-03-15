import 'dart:convert';

import 'package:localstore/localstore.dart';

class Material {
  final String id;
  final String name;
  final int quantity;
  Material({
    required this.id,
    required this.name,
    required this.quantity,
  });

  Material copyWith({
    String? id,
    String? name,
    int? quantity,
  }) {
    return Material(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
    };
  }

  factory Material.fromMap(Map<String, dynamic> map) {
    return Material(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Material.fromJson(String source) =>
      Material.fromMap(json.decode(source));
}

extension ExtMaterial on Material {
  Future<Map<String, dynamic>> save() async {
    final db = Localstore.instance;
    final material = await db.collection('ship_materials').doc(id).get();
    if (material == null) {
      final mapData = toMap();
      await db.collection('ship_materials').doc(id).set(mapData);
      return mapData;
    } else {
      return material;
    }
  }

  Future edit() async {
    final db = Localstore.instance;
    await db.collection('ship_materials').doc(id).set(toMap());
  }

  Future delete() async {
    final db = Localstore.instance;
    return db.collection('ship_materials').doc(id).delete();
  }
}
