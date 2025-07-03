import 'package:flutter/material.dart';
import 'package:ui_kit/src/dialogs/tigris_progress_indicator.dart';

class LoadingDialog {
  static final LoadingDialog _singleton = LoadingDialog._internal();
  factory LoadingDialog() => _singleton;
  LoadingDialog._internal();

  static OverlayState? _overlayState;
  static bool _isVisible = false;

  static void show(BuildContext context) {
    if (!_isVisible) {
      _overlayState = Overlay.of(context);

      _overlayState?.insert(_overlayEntry);
      _isVisible = true;
    }
  }

  static void close() {
    if (_isVisible) {
      _overlayEntry.remove();
      _isVisible = false;
    }
  }

  static final OverlayEntry _overlayEntry = OverlayEntry(
    builder: (context) {
      return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.3),
        body: Center(
          child: Container(
            height: 80.0,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11.0),
            ),
            alignment: Alignment.center,
            child: const TigrisProgressIndicator(),
          ),
        ),
      );
    },
  );
}
