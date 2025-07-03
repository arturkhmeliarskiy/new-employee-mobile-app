import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class AddDocument extends StatefulWidget {
  const AddDocument({Key? key}) : super(key: key);

  @override
  State<AddDocument> createState() => _AddDocumentState();
}

class _AddDocumentState extends State<AddDocument> {
  DateTime dateTime = DateTime.now();
  String documentType = '';
  bool documentTypeIsEmpty = false;
  final TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              'my_documents_modal_window.title_document_type'.tr(),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          TigrisDropdownMenu(
            menuItemNotSelected: documentTypeIsEmpty,
            items: TigrisMenuOption().documentTypeList,
            nameItem: 'my_documents_modal_window.hint_type_document'.tr(),
            onSelected: (type) {
              setState(() {
                documentTypeIsEmpty = false;
              });
              documentType = type;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              'my_documents_modal_window.title_validity'.tr(),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: TigrisColor.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(
                color: TigrisColor.blackOpacity20,
              ),
            ),
            alignment: Alignment.center,
            height: 70,
            child: TextField(
              textAlign: TextAlign.center,
              onTap: () async {
                if (documentTypeIsEmpty == true) {
                  setState(() {
                    documentTypeIsEmpty = false;
                  });
                }
                dateTime = await TigrisDateService.selectDate(
                      context,
                      selectedDate: dateTime,
                    ) ??
                    dateTime;

                text.text =
                    '${dateTime.day}-${dateTime.month}-${dateTime.year}';
              },
              readOnly: true,
              controller: text,
              style: Theme.of(context).textTheme.labelSmall,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'my_documents_modal_window.hint_input_date'.tr(),
                hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize:
                          ('my_documents_modal_window.hint_input_date'.tr())
                                      .length >
                                  27
                              ? 13.5
                              : 16.5,
                      color: TigrisColor.blackOpacity70,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: TigrisButton.primary(
              text: 'upload_file'.tr(),
              onPressed: () {
                if (documentType.isNotEmpty) {
                  context.read<MyDocumentsBloc>().add(
                        MyDocumentsEvent.addMyFiles(
                          '$dateTime',
                          documentType,
                          false,
                        ),
                      );
                } else {
                  setState(() {
                    documentTypeIsEmpty = true;
                    TigrisMessage().showOverlay(
                      context,
                      'my_documents_modal_window.message_type_not_selected'
                          .tr(),
                      true,
                    );
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
