import 'package:flutter/material.dart';

class TigrisSwitch extends StatefulWidget {
  final String title;
  final void Function(bool) onChanged;
  final bool isSelected;
  const TigrisSwitch({
    required this.title,
    required this.onChanged,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisSwitch> createState() => _TigrisSwitchState();
}

class _TigrisSwitchState extends State<TigrisSwitch> {
  bool isSwitch = false;

  @override
  void initState() {
    super.initState();
    isSwitch = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      value: isSwitch,
      onChanged: (value) {
        setState(() {
          isSwitch = value;
          widget.onChanged(value);
        });
      },
    );
  }
}
