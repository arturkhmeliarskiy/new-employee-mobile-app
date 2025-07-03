class StartStopCardDataModel {
  final String cardType;
  final String projectName;
  final String projectId;
  final String unravelingName;
  final String unravelingId;
  final List<Map<dynamic, dynamic>> listStartStopTime;
  final bool isEditableTimesheet;

  StartStopCardDataModel({
    required this.cardType,
    required this.projectName,
    required this.projectId,
    required this.unravelingName,
    required this.unravelingId,
    required this.listStartStopTime,
    required this.isEditableTimesheet,
  });
}
