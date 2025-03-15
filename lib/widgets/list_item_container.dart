import 'package:flutter/material.dart';

class ListItemContainer extends StatelessWidget {
  final Widget child;

  const ListItemContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.cyan,
        boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 5)
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: child,
    );
  }
}
