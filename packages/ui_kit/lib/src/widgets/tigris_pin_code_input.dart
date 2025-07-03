import 'package:flutter/material.dart';
import 'package:ui_kit/src/constants/colors/tigris_color.dart';

class TigrisPinCodeInput extends StatefulWidget {
  final void Function(String) function;
  final bool greenBackGround;
  const TigrisPinCodeInput({
    required this.function,
    this.greenBackGround = false,
    Key? key,
  }) : super(key: key);
  @override
  State<TigrisPinCodeInput> createState() => _TigrisPinCodeInputState();
}

class _TigrisPinCodeInputState extends State<TigrisPinCodeInput> {
  final TextEditingController pin1 = TextEditingController();
  final TextEditingController pin2 = TextEditingController();
  final TextEditingController pin3 = TextEditingController();
  final TextEditingController pin4 = TextEditingController();
  final TextEditingController pin5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontSize: 25),
              maxLength: 1,
              autofocus: true,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: pin1,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                if (pin1.text.isNotEmpty) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.greenBackGround
                        ? Colors.transparent
                        : TigrisColor.blackOpacity70,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(2.0),
                counterText: '',
                labelStyle: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontSize: 25),
              maxLength: 1,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: pin2,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                if (pin2.text.isEmpty) {
                  FocusScope.of(context).previousFocus();
                } else {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.greenBackGround
                        ? Colors.transparent
                        : TigrisColor.blackOpacity70,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(2.0),
                counterText: '',
                labelStyle: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontSize: 25),
              maxLength: 1,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: pin3,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                if (pin3.text.isEmpty) {
                  FocusScope.of(context).previousFocus();
                } else {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.greenBackGround
                        ? Colors.transparent
                        : TigrisColor.blackOpacity70,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(2.0),
                counterText: '',
                labelStyle: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontSize: 25),
              maxLength: 1,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: pin4,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                if (pin4.text.isEmpty) {
                  FocusScope.of(context).previousFocus();
                } else {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.greenBackGround
                        ? Colors.transparent
                        : TigrisColor.blackOpacity70,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(2.0),
                counterText: '',
                labelStyle: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(fontSize: 25),
              maxLength: 1,
              obscureText: true,
              textAlign: TextAlign.center,
              controller: pin5,
              keyboardType: TextInputType.number,
              onChanged: (_) {
                if (pin5.text.isEmpty) {
                  FocusScope.of(context).previousFocus();
                } else {
                  FocusScope.of(context).unfocus();
                }
                setState(() {
                  widget.function(
                    pin1.text + pin2.text + pin3.text + pin4.text + pin5.text,
                  );
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.greenBackGround
                        ? Colors.transparent
                        : TigrisColor.blackOpacity70,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(2.0),
                counterText: '',
                labelStyle: theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
