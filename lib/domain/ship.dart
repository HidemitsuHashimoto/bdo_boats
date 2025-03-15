import 'dart:convert';

import 'package:localstore/localstore.dart';

class Ship {
  final String id;
  final String name;
  final Map<String, int> materials;
  Ship({
    required this.id,
    required this.name,
    required this.materials,
  });

  Ship copyWith({
    String? id,
    String? name,
    Map<String, int>? materials,
  }) {
    return Ship(
      id: id ?? this.id,
      name: name ?? this.name,
      materials: materials ?? this.materials,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'materials': materials,
    };
  }

  factory Ship.fromMap(Map<String, dynamic> map) {
    return Ship(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      materials: Map<String, int>.from(map['materials']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Ship.fromJson(String source) => Ship.fromMap(json.decode(source));
}

extension ExtShip on Ship {
  Future save() async {
    final db = Localstore.instance;
    final ship = await db.collection('ships').doc(id).get();
    if (ship == null) db.collection('ships').doc(id).set(toMap());
  }

  Future delete() async {
    final db = Localstore.instance;
    return db.collection('ships').doc(id).delete();
  }
}
