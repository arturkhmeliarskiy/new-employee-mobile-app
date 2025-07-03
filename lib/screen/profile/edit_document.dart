import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class EditDocument extends StatefulWidget {
  final FilesInfoDataModel file;
  final WorkInfoDataModel workInfo;
  const EditDocument({
    required this.file,
    required this.workInfo,
    Key? key,
  }) : super(key: key);

  @override
  State<EditDocument> createState() => _EditDocumentState();
}

class _EditDocumentState extends State<EditDocument> {
  final isSwitch = <bool>[];
  int lastAction = 0;
  @override
  void initState() {
    widget.workInfo.content.forEach((element) {
      if (widget.file.isShared) {
        element.agencyId ==
                widget.file.sharedAgencys.firstWhere(
                  (id) => element.agencyId == id,
                  orElse: () => '',
                )
            ? isSwitch.add(true)
            : isSwitch.add(false);
      } else {
        isSwitch.add(false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocListener<MyDocumentsBloc, MyDocumentsState>(
      listener: (context, state) => state.maybeMap(
        message: (response) {
          setState(() {
            isSwitch[lastAction] = !isSwitch[lastAction];
          });
          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: width * .6,
                      child: Text(
                        widget.file.name,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: TigrisColor.blackOpacity50,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<MyDocumentsBloc>().add(
                          MyDocumentsEvent.deleteFile(
                            id: widget.file.id,
                            nameFile: widget.file.path,
                          ),
                        );
                  },
                  child: TigrisImage(
                    image: TigrisImages.delete,
                    color: TigrisColor.blackOpacity100,
                    width: 28.0,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: widget.workInfo.content.isNotEmpty
                ? Text(
                    'edit_document.share_with'.tr(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: TigrisColor.blackOpacity50,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : const SizedBox(),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.workInfo.content.length,
            itemBuilder: (context, index) {
              return TigrisListItem(
                leftImage: Uint8List(0),
                isLastItem: widget.workInfo.content.length == index + 1,
                image: widget.workInfo.content[index].orgLogo,
                updateData: () {},
                title: widget.workInfo.content[index].orgName,
                onlyTitle: true,
                widget: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TigrisSwitchAnimated(
                    width: 55.0,
                    height: 24.0,
                    toggleSize: 18.0,
                    value: isSwitch[index],
                    borderRadius: 12,
                    padding: 3.0,
                    activeColor: TigrisColor.greenOpacity100,
                    inactiveColor: TigrisColor.redOpacity100,
                    activeText: 'edit_document.yes'.tr(),
                    inactiveText: 'edit_document.no'.tr(),
                    activeTextColor: TigrisColor.blackOpacity100,
                    inactiveTextColor: TigrisColor.white,
                    showOnOff: true,
                    valueFontSize: 11,
                    onToggle: (value) {
                      setState(() {
                        isSwitch[index] = value;
                      });
                      lastAction = index;
                      context.read<MyDocumentsBloc>().add(
                            MyDocumentsEvent.shareFile(
                              share: value,
                              file: widget.file,
                              idAgency: widget.workInfo.content[index].agencyId,
                            ),
                          );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
