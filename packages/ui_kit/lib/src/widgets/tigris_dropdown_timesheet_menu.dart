import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisDropdownTimesheetMenu extends StatefulWidget {
  final List<Map<String, String>> items;
  final String nameItem;
  final bool unraveling;
  final void Function(String) onSelected;
  final bool disabledBorder;
  final bool disabledMargin;
  final bool showStatus;

  const TigrisDropdownTimesheetMenu({
    required this.items,
    required this.onSelected,
    required this.nameItem,
    this.unraveling = false,
    this.disabledBorder = false,
    this.disabledMargin = false,
    this.showStatus = true,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisDropdownTimesheetMenu> createState() =>
      _TigrisDropdownTimesheetMenuState();
}

class _TigrisDropdownTimesheetMenuState
    extends State<TigrisDropdownTimesheetMenu> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      margin: EdgeInsets.all(widget.disabledMargin ? 0 : 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: widget.disabledBorder
              ? TigrisColor.white
              : TigrisColor.blackOpacity20,
        ),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        hint: Text(
          widget.nameItem,
          style: widget.unraveling
              ? Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: TigrisColor.blackOpacity50)
              : Theme.of(context).textTheme.labelSmall,
        ),
        underline: const SizedBox(),
        icon: TigrisImage(
          image: TigrisIcons.chevronDown,
          color: TigrisColor.greenOpacity100,
          fit: BoxFit.fitWidth,
          width: 30,
        ),
        isExpanded: true,
        style: Theme.of(context).textTheme.labelSmall,
        iconSize: 30,
        items: widget.items.map(
          (item) {
            return DropdownMenuItem(
              value: item.keys.single,
              child: Text(item.values.single),
            );
          },
        ).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (newDropdownValue) {
          setState(() {
            if (widget.showStatus) {
              dropdownValue = newDropdownValue;
            }
            widget.onSelected(newDropdownValue!);
          });
        },
      ),
    );
  }
}
