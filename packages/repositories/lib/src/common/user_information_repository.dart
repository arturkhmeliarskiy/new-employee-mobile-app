import 'package:view_models/view_models.dart';

class UserInformationRepository {
  // Creating a Field/Property
  InfoDataModel? _model;

  InfoDataModel get model {
    return _model ?? const InfoDataModel();
  }
}
