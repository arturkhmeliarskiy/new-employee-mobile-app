import 'package:json_annotation/json_annotation.dart';

part 'shifts_model.g.dart';

@JsonSerializable()
class ShiftsModel {
  String? id;
  String? companyName;
  String? title;
  String? description;
  String? startDate;
  String? endDate;
  bool? isAllDay;
  String? location;
  String? agencyId;
  String? status;
  String? beginningOfWork;
  String? street;
  String? mailingCity;
  String? postalCode;
  String? country;
  String? restStartTime;
  String? restEndTime;
  String? startTime;
  String? endTime;
  String? extraShiftInformationPdf;

  ShiftsModel(
    this.id,
    this.companyName,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.isAllDay,
    this.location,
    this.agencyId,
    this.status,
    this.beginningOfWork,
    this.street,
    this.mailingCity,
    this.postalCode,
    this.country,
    this.restStartTime,
    this.restEndTime,
    this.startTime,
    this.endTime,
    this.extraShiftInformationPdf,
  );

  factory ShiftsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShiftsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftsModelToJson(this);

  static const fromJsonFactory = _$ShiftsModelFromJson;
}
