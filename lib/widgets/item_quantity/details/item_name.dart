import 'package:flutter/material.dart';

class ItemName extends StatelessWidget {
  final String name;

  const ItemName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: Text(name),
    );
  }
}
