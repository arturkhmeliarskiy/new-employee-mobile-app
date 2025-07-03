import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

class HomeRepository {
  final HomeService _homeService;
  final ProfileRepository _profileRepository;
  final AgencyService _agencyService;

  HomeRepository(
    this._homeService,
    this._profileRepository,
    this._agencyService,
  );

  Future<NewsInfoDataModel> getNews(
    int offset,
    bool isRegisteredUser, {
    String agencyId = '',
  }) async {
    final response = await _homeService.getNews(
      offset,
      isRegisteredUser,
      agencyId,
    );
    final result = response.toNews(_agencyService, _profileRepository.model);

    return result;
  }

  Future<AgencyFilesDataModel> getAgencyDocumentsId(String agencyId) async {
    final response = await _homeService.getAgencyDocumentsId(agencyId);
    final result = response.toAgencyFiles();

    return result;
  }

  Future<WorkInfoDataModel> getWorkInfo() async {
    final response = await _homeService.getWorkInfo();
    final result = response.toWorkInfo(_profileRepository.model);

    return result;
  }

  Future<CompaniesDataModel> getJobCompanies({String agencyId = ''}) async {
    final response = await _homeService.getJobCompanies(agencyId);
    final result = response.toJobCompanies(_profileRepository.model);

    return result;
  }

  Future<TimesheetsInfoDataModel> getTimesheets() async {
    final response = await _homeService.getTimesheets();
    final result = response.toTimesheets(_profileRepository.model);

    return result;
  }

  Future<MessagesInfoDataModel> postApprovalRequests(
    String approvalRequestId,
    String comment,
    String timesheetId,
    String action,
  ) async {
    final body = json.encode({
      'comment': comment,
      'appreq': {
        'id': approvalRequestId,
        'timesheetId': timesheetId,
      }
    });
    final response = await _homeService.postApprovalRequests(body, action);
    final result = response.toMessagesInfo();

    return result;
  }
}

extension on NewsInfoResponseModel {
  NewsInfoDataModel toNews(AgencyService service, InfoUserDataModel model) {
    final addedList = List<NewsDataModel>.from(
      (news?.map(
            (item) => NewsDataModel(
              title: item.title ?? '',
              content: item.content ?? '',
              logo: (item.logo?.trim() ?? '').isNotEmpty
                  ? item.logo?.trim() ?? ''
                  : service.getAgencyLogo(item.agencyId ?? '', model),
              active: item.active ?? false,
              agencyId: item.agencyId ?? '',
              createdAt: item.createdAt ?? '',
              updatedAt: item.updatedAt ?? '',
              color: service.getAgencyColor(item.agencyId ?? '', model),
            ),
          )) ??
          <FilesInfoDataModel>[],
    );
    return NewsInfoDataModel(
      code: code ?? 400,
      news: addedList,
      totalCount: totalCount ?? 0,
    );
  }
}

extension on WorkInfoResponseModel {
  WorkInfoDataModel toWorkInfo(InfoUserDataModel info) {
    final contentList = List<ContentDataModel>.from(
      (content?.map(
            (item) => ContentDataModel(
              agencyId: item.agencyId ?? '',
              orgName: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .orgName ??
                  '',
              orgLogo: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .headerLogoUrl ??
                  '',
              colorAgency: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .styleJson
                      ?.header
                      ?.backgroundColor ??
                  '',
              phone: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .phone ??
                  '',
              workedHoursDataModel: WorkedHoursDataModel(
                month: item.workedHours?.month ?? 0,
                week: item.workedHours?.week ?? 0,
                total: item.workedHours?.total ?? 0,
              ),
              accruedReservations: AccruedReservationsDataModel(
                hours: item.accruedReservations?.hours ?? 0.0,
                currency: item.accruedReservations?.currency ?? 0.0,
              ),
              averageWorkedHoursDataModel: AverageWorkedHoursDataModel(
                weekly: item.averageWorkedHours?.weekly ?? 0.0,
              ),
            ),
          )) ??
          <FilesInfoDataModel>[],
    );
    return WorkInfoDataModel(
      code: code ?? 400,
      content: contentList,
    );
  }
}

extension on CompaniesResponseModel {
  CompaniesDataModel toJobCompanies(InfoUserDataModel info) {
    final jobCompaniesLsit = List<JobCompaniesDataModel>.from(
      (jobCompanies?.map(
            (item) => JobCompaniesDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
              companyName: item.companyName ?? '',
              firstName: item.firstName ?? '',
              lastName: item.lastName ?? '',
              functieName: item.functieName ?? '',
              agencyId: item.agencyId ?? '',
              employeeId: item.employeeId ?? '',
              orgLogo: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .headerLogoUrl ??
                  '',
              orgName: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .orgName ??
                  '',
              agencyColor: info.agencyData
                      ?.firstWhere((element) => element.id == item.agencyId)
                      .styleJson
                      ?.header
                      ?.backgroundColor ??
                  '',
              startDate: item.startDate ?? '',
              endDate: item.endDate ?? '',
              sfRecordId: item.sfRecordId ?? '',
              approvalClients: item.approvalClients ?? '',
              disableEditingTimesheets: item.disableEditingTimesheets ?? '',
              disableTimesheetsEdition: item.disableTimesheetsEdition ?? false,
              loonBijUitzending: item.loonBijUitzending ?? '',
              projectName: item.projectName ?? '',
              responsibleClientPhone: item.responsibleClientPhone ?? '',
              responsibleClientEmail: item.responsibleClientEmail ?? '',
              contactInfo: item.contactInfo ?? '',
              phone: item.phone ?? '',
              email: item.email ?? '',
            ),
          )) ??
          <JobCompaniesDataModel>[],
    );
    return CompaniesDataModel(
      code: code ?? 400,
      jobCompanies: jobCompaniesLsit,
      count: count ?? 0,
    );
  }
}

extension on TimesheetsInfoResponseModel {
  TimesheetsInfoDataModel toTimesheets(InfoUserDataModel info) {
    final jobCompaniesLsit = List<TimesheetsDataModel>.from(
      timesheets?.map(
            (item) => TimesheetsDataModel(
              id: item.id ?? '',
              employeeId: item.employeeId ?? '',
              weekNumber: item.weekNumber ?? 0,
              startDate: item.startDate ?? '',
              endDate: item.endDate ?? '',
              nameIcon: '',
              colorIcon: '',
              isButton: false,
              isEdit: false,
              status: item.status ?? '',
              agencyId: AgencyService()
                  .getAgencyInfo(
                    item.employeeId ?? '',
                    info,
                  )
                  .agencyId,
              agencyColor: AgencyService()
                  .getAgencyInfo(
                    item.employeeId ?? '',
                    info,
                  )
                  .backgroundColor,
              orgName: AgencyService()
                  .getAgencyInfo(
                    item.employeeId ?? '',
                    info,
                  )
                  .agencyName,
              placementId: item.placementId ?? '',
              hours: '${double.parse(item.hours ?? '0').round()}',
              orgLogo: AgencyService()
                  .getAgencyInfo(
                    item.employeeId ?? '',
                    info,
                  )
                  .agencyLogo,
              functionName: item.functionName ?? '',
              companyName: item.companyName ?? '',
              expensesCost: item.expensesCost ?? 0.0,
              approvalRequests: item.approvalRequests
                      ?.map(
                        (element) => ApprovalRequestDataModel(
                          id: element.id ?? '',
                          status: element.status ?? '',
                          approverType: element.approverType ?? '',
                          approverName: element.approverName ?? '',
                          dateOfApproval: element.dateOfApproval ?? '',
                          comment: element.comment ?? '',
                          employeeApproverId: element.employeeApproverId ?? '',
                        ),
                      )
                      .toList() ??
                  <ApprovalRequestDataModel>[],
            ),
          ) ??
          <TimesheetsDataModel>[],
    );
    return TimesheetsInfoDataModel(
      code: code ?? 400,
      timesheets: jobCompaniesLsit,
      totalCount: totalCount ?? 0,
    );
  }
}

extension on MessagesInfoResponseModel {
  MessagesInfoDataModel toMessagesInfo() {
    return MessagesInfoDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
    );
  }
}

extension on AgencyFilesResponseModel {
  AgencyFilesDataModel toAgencyFiles() {
    final agencyFilesList = List<AgencyFilesInfoDataModel>.from(
      (items?.map(
            (e) => AgencyFilesInfoDataModel(
              id: e.id ?? '',
              name: e.name ?? '',
              type: e.type ?? '',
              sfFileId: e.sfFileId ?? '',
              isAttached: e.isAttached ?? false,
              expirationDate: e.expirationDate ?? '',
              sfRecordId: e.sfRecordId ?? '',
              createdAt: e.createdAt ?? '',
              size: e.size ?? 0,
              employeeId: e.employeeId ?? '',
              agencyName: '',
            ),
          )) ??
          <AgencyFilesInfoDataModel>[],
    );
    return AgencyFilesDataModel(
      code: code ?? 400,
      files: agencyFilesList,
    );
  }
}
