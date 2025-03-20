import 'package:bdo_boats/domain/material.dart' as shipmaterial;
import 'package:flutter/material.dart';

class MaterialsListAutocomplete extends StatefulWidget {
  final List<shipmaterial.Material> materialsValues;
  final Function filter;
  const MaterialsListAutocomplete({
    super.key,
    required this.materialsValues,
    required this.filter,
  });
  @override
  State<MaterialsListAutocomplete> createState() =>
      _MaterialsListAutocompleteState();
}

class _MaterialsListAutocompleteState extends State<MaterialsListAutocomplete> {
  @override
  Widget build(BuildContext context) {
    return Autocomplete<shipmaterial.Material>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable.empty();
        }
        return [
          shipmaterial.Material(id: 'todos', name: 'Todos', quantity: 0),
          ...widget.materialsValues.where((shipmaterial.Material material) {
            return material.name
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase());
          }),
        ];
      },
      onSelected: (selection) {
        widget.filter(selection);
      },
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) =>
              TextField(
        controller: textEditingController,
        focusNode: focusNode,
        onEditingComplete: onFieldSubmitted,
        decoration:
            const InputDecoration(hintText: 'Pesquise aqui o item desejado'),
      ),
      displayStringForOption: (option) => option.name,
    );
  }
}
