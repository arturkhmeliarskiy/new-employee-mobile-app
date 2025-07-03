import 'package:flutter/material.dart';

class TigrisDialog {
  static Future<bool> selectDialog({
    required BuildContext context,
    required List<Widget> widget,
    required double height,
    required double width,
    Widget button = const SizedBox(),
    bool isScroll = true,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  }) async {
    final bool? dialog = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        contentPadding: const EdgeInsets.only(top: 10.0),
        alignment: Alignment.center,
        content: SizedBox(
          height: height,
          child: Column(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              SizedBox(
                height: height - 50,
                width: width,
                child: ListView(
                  physics: isScroll
                      ? const AlwaysScrollableScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  children: widget,
                ),
              ),
              button
            ],
          ),
        ),
      ),
    );

    return dialog ?? false;
  }
}
