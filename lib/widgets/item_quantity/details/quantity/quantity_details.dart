import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_boats/providers/materials.dart';
import 'package:bdo_boats/widgets/item_quantity/details/quantity/add_action.dart';
import 'package:bdo_boats/widgets/item_quantity/details/quantity/remove_action.dart';
import 'package:bdo_boats/domain/material.dart' as shipmaterial;

class QuantityDetails extends StatefulWidget {
  final String materialId;
  final int? quantity;

  const QuantityDetails({
    super.key,
    required this.quantity,
    required this.materialId,
  });

  @override
  State<QuantityDetails> createState() => _QuantityDetailsState();
}

class _QuantityDetailsState extends State<QuantityDetails> {
  TextEditingController? _controller;
  late shipmaterial.Material material;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final materialsContext = context.watch<Materials>();
    material = context.watch<Materials>().getMaterial(widget.materialId)!;
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            _controller = TextEditingController(
              text: material.quantity.toString(),
            );
            _dialogBuilder(
              context: context,
              material: material,
              controller: _controller!,
              materialsContext: materialsContext,
            );
          },
          child: Text(
            widget.quantity != null
                ? '${material.quantity}/${widget.quantity}'
                : '${material.quantity}',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Row(
          children: [
            RemoveAction(material: material),
            const SizedBox(width: 20),
            AddAction(material: material),
          ],
        ),
      ],
    );
  }

  Future<void> _dialogBuilder({
    required BuildContext context,
    required shipmaterial.Material material,
    required TextEditingController controller,
    required Materials materialsContext,
  }) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: RichText(
            text: TextSpan(
              text: 'Modificar quantidade de: ',
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                  text: material.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Quantidade',
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
                foregroundColor: Colors.black,
              ),
              child: const Text('Fechar'),
              onPressed: () {
                controller.clear();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
                foregroundColor: Colors.black,
              ),
              child: const Text('Salvar'),
              onPressed: () async {
                final newQuantity = int.tryParse(controller.text);
                final newMaterial = shipmaterial.Material(
                  id: material.id,
                  name: material.name,
                  quantity: (newQuantity != null && newQuantity > 0)
                      ? newQuantity
                      : 0,
                );
                await newMaterial.edit();
                materialsContext.edit(newMaterial.id, newMaterial);

                if (!context.mounted) return;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
