import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String image;

  const ItemImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 40,
      fit: BoxFit.contain,
      image: AssetImage(image),
    );
  }
}
