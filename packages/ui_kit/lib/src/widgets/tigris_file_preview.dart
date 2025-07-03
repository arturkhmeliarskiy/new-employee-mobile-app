import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisFilePreview extends StatefulWidget {
  final String nameFile;
  final String typeFile;
  final Uint8List data;

  const TigrisFilePreview({
    required this.nameFile,
    required this.typeFile,
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisFilePreview> createState() => _TigrisFilePreviewState();
}

class _TigrisFilePreviewState extends State<TigrisFilePreview> {
  @override
  void initState() {
    context.read<TigrisFilePreviewBloc>().add(
          TigrisFilePreviewEvent.getFile(
            nameFile: widget.nameFile,
            data: widget.data,
            type: widget.typeFile,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: TigrisColor.white,
        child: BlocListener<TigrisFilePreviewBloc, TigrisFilePreviewState>(
          listener: (context, state) => state.maybeMap(
            saveFile: (response) {
              TigrisMessage().showOverlay(context, response.message, true);

              return null;
            },
            error: (response) {
              TigrisMessage().showOverlay(context, response.message, false);

              return null;
            },
            orElse: () {
              return null;
            },
          ),
          child: BlocBuilder<TigrisFilePreviewBloc, TigrisFilePreviewState>(
            buildWhen: (previous, current) {
              bool _resetState = false;
              current.maybeMap(
                loadFile: (_) => _resetState = true,
                fileIsNotSupported: (_) => _resetState = true,
                orElse: () {},
              );
              return _resetState;
            },
            builder: (context, state) {
              return state.maybeMap(
                loadFile: (response) {
                  final typeFile = response.type;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * .1,
                        width: width,
                        color: TigrisColor.blackOpacity100.withOpacity(0.05),
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Row(
                                    children: [
                                      const TigrisImage(
                                        image: TigrisImages.chevronLeft,
                                        color: TigrisColor.grey,
                                        width: 25.0,
                                      ),
                                      Text(
                                        'back_button_name'.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color:
                                                  TigrisColor.greenOpacity100,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  response.fileName,
                                  style: Theme.of(context).textTheme.labelSmall,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * .78,
                        width: width,
                        child: typeFile == 'pdf'
                            ? PDFView(
                                pdfData: response.file,
                                swipeHorizontal: true,
                                autoSpacing: false,
                                pageFling: false,
                                onError: (error) =>
                                    Center(child: Text(error.toString())),
                              )
                            : InteractiveViewer(
                                child: Image.memory(
                                  response.file,
                                  errorBuilder: (context, error, stackTrace) {
                                    return SizedBox(
                                      height: height * .78,
                                      width: width,
                                      child: Center(
                                        child: SizedBox(
                                          height: width * .4,
                                          width: width * .4,
                                          child: TigrisImage(
                                            image: TigrisImages.eyeOff,
                                            color: TigrisColor.blackOpacity30,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ),
                      Container(
                        height: height * .12,
                        width: width,
                        color: TigrisColor.blackOpacity100.withOpacity(0.05),
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * .2),
                          child: TigrisButton.primary(
                            text: 'button_download'.tr(),
                            textColor: TigrisColor.white,
                            onPressed: () {
                              context.read<TigrisFilePreviewBloc>().add(
                                    TigrisFilePreviewEvent.saveFile(
                                      nameFile: widget.nameFile,
                                      data: widget.data,
                                    ),
                                  );
                            },
                          ),
                        ),
                      )
                    ],
                  );
                },
                fileIsNotSupported: (response) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * .1,
                        width: width,
                        color: TigrisColor.blackOpacity100.withOpacity(0.05),
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Row(
                                    children: [
                                      const TigrisImage(
                                        image: TigrisImages.chevronLeft,
                                        color: TigrisColor.grey,
                                        width: 25.0,
                                      ),
                                      Text(
                                        'back_button_name'.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color:
                                                  TigrisColor.greenOpacity100,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  response.fileName,
                                  style: Theme.of(context).textTheme.labelSmall,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * .78,
                        width: width,
                        child: Center(
                          child: SizedBox(
                            height: width * .4,
                            width: width * .4,
                            child: TigrisImage(
                              image: TigrisImages.eyeOff,
                              color: TigrisColor.blackOpacity30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: height * .12,
                        width: width,
                        color: TigrisColor.blackOpacity100.withOpacity(0.05),
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * .2),
                          child: TigrisButton.primary(
                            text: 'button_download'.tr(),
                            textColor: TigrisColor.white,
                            onPressed: () {
                              context.read<TigrisFilePreviewBloc>().add(
                                    TigrisFilePreviewEvent.saveFile(
                                      nameFile: widget.nameFile,
                                      data: widget.data,
                                    ),
                                  );
                            },
                          ),
                        ),
                      )
                    ],
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
