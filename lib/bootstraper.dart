import 'package:api_services/services_bootstrapper.dart';
import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories_bootstraper.dart';
import 'package:shared/shared.dart';

Future<void> setupIoc() async {
  final getIt = GetIt.I;
  await initServices(getIt);
  await initShared(getIt);
  await initRepositories(getIt);
  await initBlocs(getIt);
}
