import 'package:json_annotation/json_annotation.dart';

part 'total_reservation.g.dart';

@JsonSerializable()
class TotalReservation {
  String? id;
  @JsonKey(name: 'FD_eind')
  String? fDEind;
  @JsonKey(name: 'KV_eind')
  String? kVEind;
  @JsonKey(name: 'ADV_eind')
  String? aDVEind;
  @JsonKey(name: 'TvT_eind_uren')
  String? tvTEindUren;
  @JsonKey(name: 'VG_eind')
  String? vGEind;
  @JsonKey(name: 'VG_eind_temp')
  String? vGEindTemp;
  @JsonKey(name: 'VDw_eind')
  String? vDwEind;
  @JsonKey(name: 'VDb_eind')
  String? vDbEind;
  @JsonKey(name: 'VDt_eind')
  String? vDtEind;
  @JsonKey(name: 'FD_in_uren')
  String? fDInUren;
  @JsonKey(name: 'FD_in_uren_temp')
  String? fDInUrenTemp;
  @JsonKey(name: 'KV_in_uren')
  String? kVInUren;
  @JsonKey(name: 'KV_in_uren_temp')
  String? kVInUrenTemp;
  @JsonKey(name: 'ADV_in_uren')
  String? aDVInUren;
  @JsonKey(name: 'ADV_in_uren_temp')
  String? aDVInUrenTemp;
  @JsonKey(name: 'TvT_in_uren')
  String? tvTInUren;
  @JsonKey(name: 'TvT_in_uren_temp')
  String? tvTInUrenTemp;
  @JsonKey(name: 'VG_in_uren')
  String? vGInUren;
  @JsonKey(name: 'VDw_in_uren')
  String? vDwInUren;
  @JsonKey(name: 'VDw_in_uren_temp')
  String? vDwInUrenTemp;
  @JsonKey(name: 'VDb_in_uren')
  String? vDbInUren;
  @JsonKey(name: 'VDb_in_uren_temp')
  String? vDbInUrenTemp;
  @JsonKey(name: 'VDt_in_uren')
  String? vDtInUren;
  @JsonKey(name: 'VDt_in_uren_temp')
  String? vDtInUrenTemp;
  String? totalReservationSf;
  String? nmbrsID;
  String? sfLEId;
  bool? isGetLEorg;
  String? sfOrgId;
  bool? isDeleted;
  String? sfRecordId;
  String? createdAt;
  String? updatedAt;
  String? employeeId;

  TotalReservation(
    this.id,
    this.fDEind,
    this.kVEind,
    this.aDVEind,
    this.tvTEindUren,
    this.vGEind,
    this.vGEindTemp,
    this.vDwEind,
    this.vDbEind,
    this.vDtEind,
    this.fDInUren,
    this.fDInUrenTemp,
    this.kVInUren,
    this.kVInUrenTemp,
    this.aDVInUren,
    this.aDVInUrenTemp,
    this.tvTInUren,
    this.tvTInUrenTemp,
    this.vGInUren,
    this.vDwInUren,
    this.vDwInUrenTemp,
    this.vDbInUren,
    this.vDbInUrenTemp,
    this.vDtInUren,
    this.vDtInUrenTemp,
    this.totalReservationSf,
    this.nmbrsID,
    this.sfLEId,
    this.isGetLEorg,
    this.sfOrgId,
    this.isDeleted,
    this.sfRecordId,
    this.createdAt,
    this.updatedAt,
    this.employeeId,
  );

  factory TotalReservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TotalReservationFromJson(json);

  Map<String, dynamic> toJson() => _$TotalReservationToJson(this);

  static const fromJsonFactory = _$TotalReservationFromJson;
}
