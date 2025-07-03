import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class PayslipsScreen extends StatefulWidget {
  const PayslipsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PayslipsScreen> createState() => _PayslipsScreenState();
}

class _PayslipsScreenState extends State<PayslipsScreen> {
  final List<String> _title = TigrisMenuOption().titlePayslips;
  String _valueOnTitle = 'payslips_screen.item_drop_down_pay_slips'.tr();

  List<int> _yearDropButton = [];
  int _valueOnYear = DateTime.now().year;

  bool _isAnnualStatement = false;

  @override
  void initState() {
    _yearDropButton = DateService().getLastYears(4);
    context.read<PayslipsBloc>().add(
          PayslipsEvent.getPayslip(_valueOnYear, _isAnnualStatement),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.95;
    return BlocListener<PayslipsBloc, PayslipsState>(
      listener: (context, state) => state.maybeMap(
        loadingFile: (_) => LoadingDialog.show(context),
        error: (response) => TigrisMessage()
            .showOverlay(context, response.message.toString(), false),
        getFile: (response) {
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
          LoadingDialog.close();

          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: height * .08, child: const TigrisButtonBack()),
            SizedBox(
              height: height * .92,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: _titleDropButton(),
                  ),
                  Center(
                    child: _yearsDropButton(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocBuilder<PayslipsBloc, PayslipsState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loading: (_) => const ShadowBoxTigris(
                          widget: [
                            SizedBox(
                              height: 64,
                              child: Center(
                                child: TigrisProgressIndicator(),
                              ),
                            ),
                          ],
                        ),
                        getResponse: (response) => response.data.isEmpty
                            ? ShadowBoxTigris(
                                listEmpty: response.data.isEmpty,
                                title: 'payslips_screen.message_null_payslips'
                                    .tr(),
                                widget: const [
                                  SizedBox(),
                                ],
                              )
                            : ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: response.data.length,
                                itemBuilder: (_, index) {
                                  final agency = response.data;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Text(
                                          agency[index][0].nameAgency,
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
                                                updateData: () {
                                                  context
                                                      .read<PayslipsBloc>()
                                                      .add(
                                                        PayslipsEvent.getFile(
                                                          link: agency[index]
                                                                  [id]
                                                              .link,
                                                        ),
                                                      );
                                                },
                                                title: agency[index][id]
                                                    .nameAgency,
                                                textBottom:
                                                    '${agency[index][id].year} - ${'payslips_screen.period'.tr()}: ${agency[index][id].period}',
                                                isLastItem:
                                                    agency[index].length ==
                                                        id + 1,
                                                image: agency[index][id]
                                                    .logoAgency,
                                                widget: Padding(
                                                  padding: const EdgeInsets.all(
                                                    17,
                                                  ),
                                                  child: TigrisImage(
                                                    image: TigrisImages.eye,
                                                    color: TigrisColor
                                                        .greenOpacity100,
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
                              ),
                        error: (response) {
                          return const SizedBox();
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _yearsDropButton() {
    return DropdownButton(
      borderRadius: BorderRadius.circular(8),
      alignment: AlignmentDirectional.center,
      underline: Container(),
      icon: TigrisImage(
        image: TigrisImages.chevronDown,
        color: TigrisColor.greenOpacity100,
        width: 28.0,
      ),
      style: Theme.of(context).textTheme.labelSmall,
      value: _valueOnYear,
      items: _yearDropButton.map((value) {
        return DropdownMenuItem(
          alignment: AlignmentDirectional.center,
          value: value,
          child: Text('$value'),
        );
      }).toList(),
      onChanged: (newValue) {
        if (newValue != _valueOnYear) {
          setState(() {
            _valueOnYear = int.parse(newValue.toString());
            context.read<PayslipsBloc>().add(
                  PayslipsEvent.getPayslip(_valueOnYear, _isAnnualStatement),
                );
          });
        }
      },
    );
  }

  Widget _titleDropButton() {
    return DropdownButton(
      borderRadius: BorderRadius.circular(8),
      alignment: AlignmentDirectional.center,
      underline: Container(),
      icon: TigrisImage(
        image: TigrisImages.chevronDown,
        color: TigrisColor.greenOpacity100,
        width: 28.0,
      ),
      style: Theme.of(context).textTheme.labelMedium,
      value: _valueOnTitle,
      itemHeight: 78,
      items: _title.map((value) {
        return DropdownMenuItem(
          alignment: AlignmentDirectional.center,
          value: value,
          child: SizedBox(
            width: 214,
            child: Text(
              value,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          if (newValue != _valueOnTitle) {
            _valueOnTitle = newValue.toString();
            _isAnnualStatement = !_isAnnualStatement;
            context.read<PayslipsBloc>().add(
                  PayslipsEvent.getPayslip(_valueOnYear, _isAnnualStatement),
                );
          }
        });
      },
    );
  }
}
