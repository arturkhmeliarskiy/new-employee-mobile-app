import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:view_models/view_models.dart';

part 'agency_related_info_bloc.freezed.dart';
part 'agency_related_info_event.dart';
part 'agency_related_info_state.dart';

@injectable
class AgencyRelatedInfoBloc
    extends Bloc<AgencyRelatedInfoEvent, AgencyRelatedInfoState> {
  final HomeRepository _homeRepository;
  final ProfileRepository _profileRepository;
  NewsInfoDataModel newsList = const NewsInfoDataModel(
    news: [],
    totalCount: 0,
    code: 0,
  );

  ContentDataModel contentInfo = const ContentDataModel(
    agencyId: '',
    orgName: '',
    orgLogo: '',
    colorAgency: '',
    phone: '',
    workedHoursDataModel: WorkedHoursDataModel(
      month: 0,
      week: 0,
      total: 0,
    ),
    accruedReservations: AccruedReservationsDataModel(
      currency: 0,
      hours: 0,
    ),
    averageWorkedHoursDataModel: AverageWorkedHoursDataModel(weekly: 0),
  );
  CompaniesDataModel jobCompaniesList =
      const CompaniesDataModel(code: 0, jobCompanies: [], count: 0);

  AgencyFilesDataModel agencyDocuments = const AgencyFilesDataModel(files: []);
  ChatMessagesAgencyDataModel getUnreadChatMessages =
      const ChatMessagesAgencyDataModel(chatMessages: [], code: 0, message: '');

  AgencyRelatedInfoBloc(
    this._homeRepository,
    this._profileRepository,
  ) : super(
          const AgencyRelatedInfoState.init(
            jobCompanies: [],
            newsList: NewsInfoDataModel(
              news: [],
              totalCount: 0,
              code: 0,
            ),
            documents: [],
            orgLogo: '',
          ),
        ) {
    on<InitAgencyRelatedInfoEvent>(
      _initAgencyRelatedInfo,
    );

    on<LoadFileAgencyRelatedInfoEvent>(_loadFile);
    on<ShowMoreAgencyRelatedInfoEvent>(showMoreNews);
  }

  Future<void> showMoreNews(
    ShowMoreAgencyRelatedInfoEvent event,
    Emitter<AgencyRelatedInfoState> emit,
  ) async {
    final downloadedNews = newsList.news;
    final newNews = await _homeRepository.getNews(newsList.news.length, true);
    if (newNews.code == 200) {
      newNews.news.forEach(downloadedNews.add);
      newsList = newsList.copyWith(news: downloadedNews);
      emit(
        (state as InitAgencyRelatedInfoStateState).copyWith(
          newsList: newsList,
        ),
      );
    }
  }

  Future<void> _initAgencyRelatedInfo(
    InitAgencyRelatedInfoEvent event,
    Emitter<AgencyRelatedInfoState> emit,
  ) async {
    emit(const AgencyRelatedInfoState.loadingEmployers());

    final workInfo = await _homeRepository.getWorkInfo();
    if (workInfo.code == 200) {
      contentInfo = workInfo.content.firstWhere(
        (element) => element.agencyId == event.agencyId,
      );
    }
    jobCompaniesList =
        await _homeRepository.getJobCompanies(agencyId: event.agencyId);
    newsList = await _homeRepository.getNews(0, true, agencyId: event.agencyId);
    agencyDocuments =
        await _homeRepository.getAgencyDocumentsId(event.agencyId);

    emit(
      AgencyRelatedInfoState.init(
        orgLogo: contentInfo.orgLogo,
        jobCompanies: jobCompaniesList.jobCompanies ?? [],
        newsList: newsList,
        documents: agencyDocuments.files,
      ),
    );
  }

  Future<void> _loadFile(
    LoadFileAgencyRelatedInfoEvent event,
    Emitter<AgencyRelatedInfoState> emit,
  ) async {
    emit(const AgencyRelatedInfoState.loading());
    emit(
      AgencyRelatedInfoState.init(
        orgLogo: contentInfo.orgLogo,
        jobCompanies: jobCompaniesList.jobCompanies ?? [],
        newsList: newsList,
        documents: agencyDocuments.files,
      ),
    );
    final base64Image =
        await _profileRepository.getBase64AgencyFile(event.file.id);
    if (base64Image.code == 200) {
      final file = const Base64Decoder().convert(base64Image.file ?? '');

      emit(
        AgencyRelatedInfoState.openFile(
          nameFile: event.file.name,
          file: file,
          type: event.file.type.toLowerCase(),
        ),
      );
      emit(
        AgencyRelatedInfoState.init(
          orgLogo: contentInfo.orgLogo,
          jobCompanies: jobCompaniesList.jobCompanies ?? [],
          newsList: newsList,
          documents: agencyDocuments.files,
        ),
      );
    } else {
      emit(
        AgencyRelatedInfoState.message(
          message: 'tigris_file_preview.file_retrieval_error'.tr(),
        ),
      );
      emit(
        AgencyRelatedInfoState.init(
          orgLogo: contentInfo.orgLogo,
          jobCompanies: jobCompaniesList.jobCompanies ?? [],
          newsList: newsList,
          documents: agencyDocuments.files,
        ),
      );
    }
  }
}
