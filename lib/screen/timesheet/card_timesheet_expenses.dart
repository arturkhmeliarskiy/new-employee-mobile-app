import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class CardTimesheetExpenses extends StatefulWidget {
  final int indexCard;
  final void Function(String) onSelectedProject;
  final void Function(String) onSelectedCpcExpenseType;
  final void Function(String) onSelectedPrice;
  final void Function(int, String, String) onSelectedExpense;
  final List<int> listDaysNotBlocked;
  final ExpensesCardDataModel cardTimesheet;
  final String startDateTimesheet;
  final bool isEditableTimesheet;

  const CardTimesheetExpenses({
    required this.indexCard,
    required this.onSelectedProject,
    required this.onSelectedCpcExpenseType,
    required this.onSelectedPrice,
    required this.onSelectedExpense,
    required this.listDaysNotBlocked,
    required this.cardTimesheet,
    required this.startDateTimesheet,
    required this.isEditableTimesheet,
    Key? key,
  }) : super(key: key);

  @override
  State<CardTimesheetExpenses> createState() => _CardTimesheetExpensesState();
}

class _CardTimesheetExpensesState extends State<CardTimesheetExpenses> {
  final time = TextEditingController();

  @override
  void dispose() {
    time.dispose();
    super.dispose();
  }

  final dateFormat = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return ShadowBoxTigris(
      crossAxisAlignment: CrossAxisAlignment.start,
      top: 20,
      widget: [
        SizedBox(
          height: 460,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 22,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'costs'.tr(),
                      style: widget.isEditableTimesheet
                          ? Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                                color: TigrisColor.blackOpacity50,
                              )
                          : Theme.of(
                              context,
                            ).textTheme.labelSmall,
                    ),
                    if (widget.isEditableTimesheet)
                      const SizedBox()
                    else
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // context.read<TimesheetBloc>().add(
                            //       TimesheetEvent.deleteExpensesCard(
                            //         widget.indexCard,
                            //       ),
                            //     );
                          });
                        },
                        child: TigrisImage(
                          image: TigrisImages.x,
                          width: 25,
                          color: TigrisColor.redOpacity100,
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 16,
                ),
                child: TigrisDropdownTimesheetMenu(
                  unraveling: widget.isEditableTimesheet,
                  disabledMargin: true,
                  items: widget.isEditableTimesheet
                      ? []
                      : widget.cardTimesheet.projects,
                  nameItem: widget.cardTimesheet.projectItem,
                  onSelected: (projectId) {
                    setState(() {
                      widget.onSelectedProject(projectId);
                    });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 16,
                ),
                child: TigrisDropdownTimesheetMenu(
                  unraveling: widget.isEditableTimesheet,
                  disabledMargin: true,
                  items: widget.isEditableTimesheet
                      ? []
                      : widget.cardTimesheet.cpcExpenseType,
                  onSelected: (hourId) {
                    setState(() {
                      widget.onSelectedCpcExpenseType(hourId);
                    });
                  },
                  nameItem: widget.cardTimesheet.cpcExpenseTypeConfigItem,
                ),
              ),
              Container(
                height: 64,
                margin: const EdgeInsets.only(
                  top: 10,
                  right: 16,
                  left: 16,
                ),
                child: TextField(
                  style:
                      widget.cardTimesheet.isPrice || widget.isEditableTimesheet
                          ? Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                                color: TigrisColor.blackOpacity50,
                              )
                          : Theme.of(
                              context,
                            ).textTheme.labelSmall,
                  readOnly: widget.cardTimesheet.isPrice ||
                      widget.isEditableTimesheet,
                  controller: TextEditingController.fromValue(
                    TextEditingValue(
                      text: widget.cardTimesheet.price,
                      selection: TextSelection.collapsed(
                        offset: widget.cardTimesheet.price.length,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: TigrisColor.blackOpacity20),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: TigrisColor.blackOpacity20),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: widget.cardTimesheet.isPrice ||
                                widget.isEditableTimesheet
                            ? 1
                            : 2,
                        color: widget.cardTimesheet.isPrice ||
                                widget.isEditableTimesheet
                            ? TigrisColor.blackOpacity20
                            : TigrisColor.greenOpacity100,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                    ),
                    fillColor: widget.cardTimesheet.isPrice
                        ? TigrisColor.grey.withOpacity(0.4)
                        : TigrisColor.white,
                    filled: true,
                    counterText: '',
                    contentPadding: const EdgeInsets.only(
                      top: 25,
                      bottom: 25,
                      left: 25,
                    ),
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.labelSmall,
                  ),
                  onChanged: (value) {
                    widget.onSelectedPrice(
                      value,
                    );
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(
                        widget.cardTimesheet.positive
                            ? r'[\d+\.]'
                            : r'[\d+\-\.]',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: TigrisMenuOption().weekday.length,
                  itemBuilder: (
                    context,
                    indexWeek,
                  ) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: 16,
                        right:
                            TigrisMenuOption().weekday.length == indexWeek + 1
                                ? 16
                                : 0,
                      ),
                      height: 95,
                      width: 54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            TigrisMenuOption().weekday[indexWeek][0] +
                                TigrisMenuOption().weekday[indexWeek][1],
                            style: widget.isEditableTimesheet
                                ? Theme.of(
                                    context,
                                  ).textTheme.labelSmall?.copyWith(
                                      color: TigrisColor.blackOpacity50,
                                    )
                                : Theme.of(
                                    context,
                                  ).textTheme.labelSmall,
                          ),
                          Container(
                            height: 54,
                            width: 54,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: widget.cardTimesheet
                                              .listDaysNotBlockedCardExpenses
                                              .contains(
                                            indexWeek,
                                          ) ==
                                          false ||
                                      widget.isEditableTimesheet
                                  ? TigrisColor.grey.withOpacity(0.1)
                                  : TigrisColor.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  8,
                                ),
                              ),
                              border: Border.all(
                                color: TigrisColor.blackOpacity20,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: TigrisColor.blackOpacity10,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(
                                    0,
                                    5,
                                  ), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextField(
                              readOnly: widget.cardTimesheet
                                          .listDaysNotBlockedCardExpenses
                                          .contains(
                                        indexWeek,
                                      ) ==
                                      false ||
                                  widget.isEditableTimesheet,
                              textAlign: TextAlign.center,
                              textInputAction: indexWeek != 6
                                  ? TextInputAction.next
                                  : TextInputAction.done,
                              maxLength: 6,
                              controller: TextEditingController.fromValue(
                                TextEditingValue(
                                  text: widget.cardTimesheet
                                          .amountOfExpensesList.keys
                                          .toList(
                                            growable: false,
                                          )
                                          .contains(
                                            indexWeek,
                                          )
                                      ? widget.cardTimesheet
                                                  .amountOfExpensesList[
                                              indexWeek] ??
                                          ''
                                      : '',
                                  selection: TextSelection.collapsed(
                                    offset: widget
                                            .cardTimesheet
                                            .amountOfExpensesList[indexWeek]
                                            ?.length ??
                                        0,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                final date = DateTime.parse(
                                  widget.startDateTimesheet,
                                );

                                final itemDate = dateFormat.format(
                                  DateTime(
                                    date.year,
                                    date.month,
                                    date.day + indexWeek,
                                  ),
                                );

                                widget.onSelectedExpense(
                                  indexWeek,
                                  itemDate,
                                  value,
                                );
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                    r'[\-]+[A-Za-zА-Яа-яЁё]+[,]',
                                  ),
                                ),
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d+\.?\d*'),
                                ),
                              ],
                              style: widget.cardTimesheet
                                              .listDaysNotBlockedCardExpenses
                                              .contains(
                                            indexWeek,
                                          ) ==
                                          false ||
                                      widget.isEditableTimesheet
                                  ? Theme.of(
                                      context,
                                    ).textTheme.labelSmall?.copyWith(
                                        color: TigrisColor.blackOpacity50,
                                      )
                                  : Theme.of(
                                      context,
                                    ).textTheme.labelSmall,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                                hintStyle: Theme.of(
                                  context,
                                ).textTheme.labelSmall,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 25,
                ),
                alignment: Alignment.center,
                child: Text(
                  'upload_file'.tr(),
                  style: widget.isEditableTimesheet
                      ? Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: TigrisColor.blackOpacity50)
                      : Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
