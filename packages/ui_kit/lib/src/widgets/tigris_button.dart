import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum TigrisButtonType {
  primary,
  secondary,
  text,
}

class TigrisButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TigrisButtonType type;
  final Color textColor;
  final Color backgroundColor;

  const TigrisButton.primary({
    required this.text,
    required this.onPressed,
    this.textColor = TigrisColor.appBlack,
    this.backgroundColor = TigrisColor.appGreen,
    Key? key,
  })  : type = TigrisButtonType.primary,
        super(key: key);

  const TigrisButton.secondary({
    required this.text,
    required this.onPressed,
    this.textColor = TigrisColor.appBlack,
    this.backgroundColor = Colors.transparent,
    Key? key,
  })  : type = TigrisButtonType.secondary,
        super(key: key);

  const TigrisButton.text({
    required this.text,
    required this.onPressed,
    this.textColor = TigrisColor.appBlack,
    this.backgroundColor = Colors.transparent,
    Key? key,
  })  : type = TigrisButtonType.text,
        super(key: key);

  ButtonStyle _getButtonStyle(ThemeData theme) {
    final defaultStyle = ElevatedButton.styleFrom(
      elevation: 0.0,
      disabledBackgroundColor: backgroundColor,
      shadowColor: Colors.transparent,
      minimumSize: const Size.fromHeight(64.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );

    switch (type) {
      case TigrisButtonType.primary:
        return defaultStyle.copyWith(
          overlayColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 150, 224, 209),
          ),
        );
      case TigrisButtonType.secondary:
        return defaultStyle.copyWith(
          side: MaterialStateProperty.all(
            const BorderSide(
              color: TigrisColor.appBlack,
            ),
          ),
        );
      default:
        return defaultStyle;
    }
  }

  Widget getTextWidget(ThemeData theme) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: theme.textTheme.titleMedium?.copyWith(
        color: textColor,
      ),
    );
  }

  ButtonStyleButton _getButton(ThemeData theme) {
    switch (type) {
      case TigrisButtonType.primary:
        return ElevatedButton(
          style: _getButtonStyle(theme),
          onPressed: onPressed,
          child: getTextWidget(theme),
        );
      default:
        return TextButton(
          style: _getButtonStyle(theme),
          onPressed: onPressed,
          child: getTextWidget(theme),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _getButton(theme);
  }
}
