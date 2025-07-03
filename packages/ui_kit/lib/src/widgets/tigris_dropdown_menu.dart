import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisDropdownMenu extends StatefulWidget {
  final List<Map<String, String>> items;
  final String nameItem;
  final void Function(String) onSelected;
  final bool visibleBorder;
  final bool menuItemNotSelected;
  const TigrisDropdownMenu({
    required this.items,
    required this.onSelected,
    required this.nameItem,
    this.visibleBorder = true,
    this.menuItemNotSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisDropdownMenu> createState() => _TigrisDropdownMenuState();
}

class _TigrisDropdownMenuState extends State<TigrisDropdownMenu> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: widget.menuItemNotSelected
              ? TigrisColor.redOpacity100
              : widget.visibleBorder
                  ? TigrisColor.blackOpacity20
                  : Colors.transparent,
        ),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        hint: Text(widget.nameItem),

        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontSize: widget.nameItem.length > 19
                  ? widget.nameItem.length > 22
                      ? 12.3
                      : 15.5
                  : 18,
            ),
        underline: const SizedBox(),
        icon: TigrisImage(
          image: TigrisIcons.chevronDown,
          color: TigrisColor.greenOpacity100,
          fit: BoxFit.fitWidth,
          width: 30,
        ),
        isExpanded: true,
        iconSize: 30,
        items: widget.items.map(
          (item) {
            return DropdownMenuItem(
              value: item['value'],
              alignment: AlignmentDirectional.topStart,
              child: Text(item['label'] ?? ''),
            );
          },
        ).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (newDropdownValue) {
          setState(() {
            dropdownValue = newDropdownValue;
            widget.onSelected(newDropdownValue!);
          });
        },
      ),
    );
  }
}
