import 'package:flutter/material.dart';
import 'package:nil/nil.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final bool obscureText;
  final void Function(String) onSubmitted;
  final void Function(String)? onChanged;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final FocusNode? focus;
  final VoidCallback? onTap;
  final bool topTip;
  final bool enabled;
  final bool greenBackGround;
  final Widget suffixWidget;

  const TigrisTextField({
    required this.controller,
    required this.title,
    required this.onSubmitted,
    this.onChanged,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.multiline,
    this.focus,
    this.onTap,
    this.topTip = false,
    this.enabled = true,
    this.greenBackGround = false,
    this.suffixWidget = nil,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          enabled: enabled,
          onChanged: onChanged,
          onTap: onTap,
          focusNode: focus,
          textAlignVertical: topTip == false
              ? TextAlignVertical.center
              : TextAlignVertical.bottom,
          textInputAction: textInputAction,
          obscureText: obscureText,
          maxLength: 255,
          keyboardType: textInputType,
          controller: controller,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            suffixIcon: suffixWidget == nil ? null : suffixWidget,
            filled: true,
            fillColor: Colors.white,
            contentPadding: topTip == false
                ? const EdgeInsets.fromLTRB(10, 20, 10, 20)
                : const EdgeInsets.fromLTRB(12, 33, 10, 7),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: TigrisColor.blackOpacity20,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: greenBackGround
                    ? Colors.transparent
                    : TigrisColor.blackOpacity20,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: TigrisColor.blackOpacity20,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            hintText: topTip == false ? title : '',
            floatingLabelBehavior: FloatingLabelBehavior.never,
            counterText: '',
            hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: TigrisColor.appBlack,
                ),
          ),
        ),
        Positioned(
          left: 12,
          top: 7,
          child: topTip == false
              ? const SizedBox()
              : Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: TigrisColor.blackOpacity30,
                      ),
                ),
        ),
      ],
    );
  }
}
