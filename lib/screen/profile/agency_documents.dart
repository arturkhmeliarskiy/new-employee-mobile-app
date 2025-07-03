import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:ui_kit/ui_kit.dart';

class AgencyDocumentsModalWindow extends StatefulWidget {
  const AgencyDocumentsModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<AgencyDocumentsModalWindow> createState() =>
      _AgencyDocumentsModalWindowState();
}

class _AgencyDocumentsModalWindowState
    extends State<AgencyDocumentsModalWindow> {
  DateTime? dateTime;
  DateTime currentDate = DateTime.now();
  String? documentType;
  bool isSwitched = false;
  final TextEditingController text = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<AgencyDocumentsBloc>().add(
          AgencyDocumentsEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.95;
    return BlocListener<AgencyDocumentsBloc, AgencyDocumentsState>(
      listener: (context, state) => state.maybeMap(
        init: (info) {
          LoadingDialog.close();
          return null;
        },
        loading: (_) => LoadingDialog.show(context),
        openFile: (response) {
          LoadingDialog.close();
          context.read<AgencyDocumentsBloc>().add(
                AgencyDocumentsEvent.init(),
              );
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => TigrisFilePreview(
                nameFile: response.nameFile,
                typeFile: response.type,
                data: response.file,
              ),
            ),
          );
          return null;
        },
        message: (response) {
          TigrisMessage().showOverlay(context, response.message, false);
          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              child: TigrisButtonBack(),
            ),
            SizedBox(
              height: height * .92,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'settings_modal_window.title_agency_documents'.tr(),
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocBuilder<AgencyDocumentsBloc, AgencyDocumentsState>(
                    buildWhen: (previous, current) {
                      return current.maybeMap(
                        init: (_) {
                          return true;
                        },
                        orElse: () {
                          return false;
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        init: (initState) {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: initState.model.length,
                            itemBuilder: (_, index) {
                              final agency = initState.model;
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      agency[index][0].agencyName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ),
                                  ShadowBoxTigris(
                                    widget: [
                                      ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: agency[index].length,
                                        itemBuilder: (_, id) {
                                          return TigrisListItem(
                                            leftImage: Uint8List(0),
                                            updateData: () => context
                                                .read<AgencyDocumentsBloc>()
                                                .add(
                                                  AgencyDocumentsEvent.loadFile(
                                                    file: agency[index][id],
                                                  ),
                                                ),
                                            title: agency[index][id].name,
                                            onlyTitle: true,
                                            isLastItem:
                                                agency[index].length == id + 1,
                                            image: '',
                                            widget: Padding(
                                              padding: const EdgeInsets.all(
                                                17,
                                              ),
                                              child: TigrisImage(
                                                image: TigrisImages.eye,
                                                color:
                                                    TigrisColor.greenOpacity100,
                                                width: 28.0,
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
