import 'dart:async';

import 'package:shared/shared.dart';
import 'package:tigris/main.dart';

Future<void> main() async {
  AppManager.currentConfig = AppManager.local;
  await mainCommon();
}
