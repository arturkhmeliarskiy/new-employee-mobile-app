import 'package:json_annotation/json_annotation.dart';

part 'records.g.dart';

@JsonSerializable()
class Records {
  Records(
    this.id,
    this.firstName,
    this.lastName,
    this.birthdate,
    this.email,
    this.sfOrgId,
    this.photoURL,
    this.isUpsertApp,
    this.isGetLEorg,
    this.registeredOnApp,
    this.sfLEId,
    this.sfRecordId,
    this.bsnNummer,
    this.initialen,
    this.idType,
    this.geboorteland,
    this.idNummer,
    this.bankIBAN,
    this.salaryType,
    this.dienstverbandStatus,
    this.deeltijdpercentage,
    this.sector,
    this.tijdvakTabel,
    this.mailingcity,
    this.gender,
    this.mailingLongitude,
    this.mailingLatitude,
    this.beschikbaarheid,
    this.needOpportunityNotifications,
    this.multiOwnTransport,
    this.mailingState,
    this.mailingCountry,
    this.mailingPostalCode,
    this.mailingStreet,
    this.gewensteFuncties,
    this.idVerloopdatum,
    this.loonheffingskorting,
    this.createdAt,
    this.updatedAt,
    this.agencyId,
    this.individualRefId,
    this.userId,
    this.drivingLicense,
    this.mobile,
    this.description,
    this.feedbackSummarize,
    this.indienstDat,
    this.nationaliteit,
    this.invloedVerzekeringsplicht,
    this.codeCao,
    this.waoWia,
    this.ww,
    this.zw,
    this.codeIabZvw,
    this.codeZvw,
    this.jaarloonBT,
    this.lhk,
    this.loonheffing,
    this.kleurTabel,
    this.soortInkomen,
    this.fase,
    this.blockedReservations,
    this.availableHours,
    this.periodOfNotice,
    this.availableHoursPeriod,
    this.applyWageTaxLevyfrom,
  );
  String? id;
  String? firstName;
  String? lastName;
  String? birthdate;
  String? email;
  String? sfOrgId;
  String? photoURL;
  bool? isUpsertApp;
  bool? isGetLEorg;
  bool? registeredOnApp;
  String? sfLEId;
  String? sfRecordId;
  String? bsnNummer;
  String? initialen;
  String? idType;
  String? geboorteland;
  String? idNummer;
  String? bankIBAN;
  String? salaryType;
  String? dienstverbandStatus;
  int? deeltijdpercentage;
  int? sector;
  String? tijdvakTabel;
  String? mailingcity;
  String? gender;
  String? mailingLongitude;
  String? mailingLatitude;
  bool? beschikbaarheid;
  bool? needOpportunityNotifications;
  String? multiOwnTransport;
  String? mailingState;
  String? mailingCountry;
  String? mailingPostalCode;
  String? mailingStreet;
  String? gewensteFuncties;
  String? idVerloopdatum;
  bool? loonheffingskorting;
  String? createdAt;
  String? updatedAt;
  String? agencyId;
  String? individualRefId;
  String? userId;
  String? drivingLicense;
  String? mobile;
  String? description;
  String? feedbackSummarize;
  String? indienstDat;
  String? nationaliteit;
  String? invloedVerzekeringsplicht;
  int? codeCao;
  bool? waoWia;
  bool? ww;
  bool? zw;
  int? codeIabZvw;
  String? codeZvw;
  String? jaarloonBT;
  bool? lhk;
  bool? loonheffing;
  int? kleurTabel;
  int? soortInkomen;
  String? fase;
  String? blockedReservations;
  int? availableHours;
  String? periodOfNotice;
  String? availableHoursPeriod;
  String? applyWageTaxLevyfrom;

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsToJson(this);

  static const fromJsonFactory = _$RecordsFromJson;
}
