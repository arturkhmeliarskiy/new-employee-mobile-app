import 'package:app_logger/app_logger.dart';
import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget {
  final VoidCallback? inactive;
  final VoidCallback? paused;
  final VoidCallback? detached;
  final VoidCallback? resumed;
  final VoidCallback? hidden;
  final Widget child;

  const LifeCycleManager({
    required this.child,
    this.inactive,
    this.paused,
    this.detached,
    this.resumed,
    this.hidden,
    Key? key,
  }) : super(key: key);

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        widget.inactive?.call();
        loggerNoStack.i('appLifeCycleState inactive');
        break;
      case AppLifecycleState.resumed:
        widget.resumed?.call();
        loggerNoStack.i('appLifeCycleState resumed');
        break;
      case AppLifecycleState.paused:
        widget.paused?.call();
        loggerNoStack.i('appLifeCycleState paused');
        break;
      case AppLifecycleState.detached:
        widget.detached?.call();
        loggerNoStack.i('appLifeCycleState detached');
        break;
      case AppLifecycleState.hidden:
        widget.detached?.call();
        loggerNoStack.i('appLifeCycleState hidden');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
