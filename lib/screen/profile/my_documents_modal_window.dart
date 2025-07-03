import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/profile/add_document.dart';
import 'package:tigris/screen/profile/edit_document.dart';
import 'package:ui_kit/ui_kit.dart';

class MyDocumentsModalWindow extends StatefulWidget {
  const MyDocumentsModalWindow({Key? key}) : super(key: key);

  @override
  State<MyDocumentsModalWindow> createState() => _MyDocumentsModalWindowState();
}

class _MyDocumentsModalWindowState extends State<MyDocumentsModalWindow> {
  @override
  void initState() {
    super.initState();
    context.read<MyDocumentsBloc>().add(
          MyDocumentsEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.95;
    final width = MediaQuery.of(context).size.width;
    return BlocListener<MyDocumentsBloc, MyDocumentsState>(
      listener: (context, state) => state.maybeMap(
        addMyFileSuccess: (info) {
          Navigator.of(context).pop();
          TigrisMessage().showOverlay(context, info.model.message, true);

          return null;
        },
        addMyFileFailure: (info) {
          TigrisMessage().showOverlay(context, info.model.message, false);

          return null;
        },
        openFile: (response) {
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
          LoadingDialog.close();
          context.read<MyDocumentsBloc>().add(
                MyDocumentsEvent.init(),
              );
          TigrisMessage().showOverlay(context, response.message, false);

          return null;
        },
        loadingClose: (_) => LoadingDialog.close(),
        loading: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: TigrisColor.white,
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
                    'settings_modal_window.my_documents'.tr(),
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'my_documents_modal_window.my_cv'.tr(),
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  BlocBuilder<MyDocumentsBloc, MyDocumentsState>(
                    buildWhen: (previous, current) {
                      bool _resetState = false;
                      current.maybeMap(
                        init: (_) => _resetState = true,
                        orElse: () {},
                      );
                      return _resetState;
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        init: (initState) {
                          return ShadowBoxTigris(
                            listEmpty: initState.allFilesCVDataModel.isEmpty,
                            title: 'my_documents_modal_window.no_my_cv'.tr(),
                            widget: [
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: initState.allFilesCVDataModel.length,
                                itemBuilder: (context, index) {
                                  return TigrisListItem(
                                    leftImage: Uint8List(0),
                                    isLastItem:
                                        initState.allFilesCVDataModel.length ==
                                            index + 1,
                                    image: '',
                                    updateData: () {},
                                    title: initState
                                        .allFilesCVDataModel[index].name,
                                    onlyTitle: true,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              if (!initState
                                                  .allFilesCVDataModel[index]
                                                  .isShared) {
                                                final heightDialog = initState
                                                        .workInfo
                                                        .content
                                                        .isNotEmpty
                                                    ? 141 +
                                                        (85 *
                                                                initState
                                                                    .workInfo
                                                                    .content
                                                                    .length)
                                                            .toDouble()
                                                    : 80.0;

                                                TigrisDialog.selectDialog(
                                                  width: width,
                                                  height:
                                                      heightDialog > height * .9
                                                          ? height * .9
                                                          : heightDialog,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  context: context,
                                                  widget: [
                                                    EditDocument(
                                                      file: initState
                                                              .allFilesCVDataModel[
                                                          index],
                                                      workInfo:
                                                          initState.workInfo,
                                                    ),
                                                  ],
                                                );
                                              }
                                            },
                                            child: TigrisImage(
                                              image: TigrisImages.share,
                                              color:
                                                  TigrisColor.greenOpacity100,
                                              width: 28.0,
                                            ),
                                          ),
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              if (initState
                                                  .allFilesCVDataModel[index]
                                                  .isShared) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 5,
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      final heightDialog = initState
                                                              .workInfo
                                                              .content
                                                              .isNotEmpty
                                                          ? 141 +
                                                              (85 *
                                                                      initState
                                                                          .workInfo
                                                                          .content
                                                                          .length)
                                                                  .toDouble()
                                                          : 80.0;

                                                      TigrisDialog.selectDialog(
                                                        width: width,
                                                        height: heightDialog >
                                                                height * .9
                                                            ? height * .9
                                                            : heightDialog,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        context: context,
                                                        widget: [
                                                          EditDocument(
                                                            file: initState
                                                                    .allFilesCVDataModel[
                                                                index],
                                                            workInfo: initState
                                                                .workInfo,
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                    child: TigrisImage(
                                                      image: TigrisImages.edit,
                                                      color: TigrisColor
                                                          .greenOpacity100,
                                                      width: 28.0,
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                            ),
                                            child: InkWell(
                                              onTap: () => context
                                                  .read<MyDocumentsBloc>()
                                                  .add(
                                                    MyDocumentsEvent.loadFile(
                                                      file: initState
                                                              .allFilesCVDataModel[
                                                          index],
                                                    ),
                                                  ),
                                              child: TigrisImage(
                                                image: TigrisImages.eye,
                                                color:
                                                    TigrisColor.greenOpacity100,
                                                width: 28.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          );
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 35,
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: Text(
                      'my_documents_modal_window.my_personal_documents'.tr(),
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  BlocBuilder<MyDocumentsBloc, MyDocumentsState>(
                    buildWhen: (previous, current) {
                      bool _resetState = false;
                      current.maybeMap(
                        init: (_) => _resetState = true,
                        orElse: () {},
                      );
                      return _resetState;
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        init: (initState) {
                          return ShadowBoxTigris(
                            listEmpty: initState.allFilesDataModel.isEmpty,
                            title:
                                'my_documents_modal_window.no_my_personal_documents'
                                    .tr(),
                            widget: [
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: initState.allFilesDataModel.length,
                                itemBuilder: (context, index) {
                                  return TigrisListItem(
                                    leftImage: Uint8List(0),
                                    isLastItem:
                                        initState.allFilesDataModel.length ==
                                            index + 1,
                                    image: '',
                                    updateData: () {},
                                    title:
                                        initState.allFilesDataModel[index].name,
                                    onlyTitle: true,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              if (!initState
                                                  .allFilesDataModel[index]
                                                  .isShared) {
                                                final heightDialog = initState
                                                        .workInfo
                                                        .content
                                                        .isNotEmpty
                                                    ? 141 +
                                                        (85 *
                                                                initState
                                                                    .workInfo
                                                                    .content
                                                                    .length)
                                                            .toDouble()
                                                    : 80.0;

                                                TigrisDialog.selectDialog(
                                                  width: width,
                                                  height:
                                                      heightDialog > height * .9
                                                          ? height * .9
                                                          : heightDialog,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  context: context,
                                                  widget: [
                                                    EditDocument(
                                                      file: initState
                                                              .allFilesDataModel[
                                                          index],
                                                      workInfo:
                                                          initState.workInfo,
                                                    ),
                                                  ],
                                                );
                                              }
                                            },
                                            child: TigrisImage(
                                              image: TigrisImages.share,
                                              color:
                                                  TigrisColor.greenOpacity100,
                                              width: 28.0,
                                            ),
                                          ),
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              if (initState
                                                  .allFilesDataModel[index]
                                                  .isShared) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 5,
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      final heightDialog = initState
                                                              .workInfo
                                                              .content
                                                              .isNotEmpty
                                                          ? 141 +
                                                              (85 *
                                                                      initState
                                                                          .workInfo
                                                                          .content
                                                                          .length)
                                                                  .toDouble()
                                                          : 80.0;

                                                      TigrisDialog.selectDialog(
                                                        width: width,
                                                        height: heightDialog >
                                                                height * .9
                                                            ? height * .9
                                                            : heightDialog,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        context: context,
                                                        widget: [
                                                          EditDocument(
                                                            file: initState
                                                                    .allFilesDataModel[
                                                                index],
                                                            workInfo: initState
                                                                .workInfo,
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                    child: TigrisImage(
                                                      image: TigrisImages.edit,
                                                      color: TigrisColor
                                                          .greenOpacity100,
                                                      width: 28.0,
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                            ),
                                            child: InkWell(
                                              onTap: () => context
                                                  .read<MyDocumentsBloc>()
                                                  .add(
                                                    MyDocumentsEvent.loadFile(
                                                      file: initState
                                                              .allFilesDataModel[
                                                          index],
                                                    ),
                                                  ),
                                              child: TigrisImage(
                                                image: TigrisImages.eye,
                                                color:
                                                    TigrisColor.greenOpacity100,
                                                width: 28.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          );
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      TigrisDialog.selectDialog(
                        context: context,
                        widget: [const AddDocument()],
                        height: 378,
                        width: 300,
                      );
                    },
                    child: Center(
                      child: Text(
                        'my_documents_modal_window.add_document'.tr(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
