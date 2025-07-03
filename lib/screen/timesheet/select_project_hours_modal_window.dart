import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:ui_kit/ui_kit.dart';

class SelectProjectHoursModalWindow extends StatelessWidget {
  const SelectProjectHoursModalWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: MediaQuery.of(context).viewInsets,
      height: height * 0.44,
      decoration: const BoxDecoration(
        color: TigrisColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const TigrisImage(
                    image: TigrisImages.chevronLeft,
                    color: TigrisColor.grey,
                    width: 25.0,
                  ),
                  Text(
                    'back_button_name'.tr(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 45,
              right: 45,
            ),
            child: Text(
              'Select project',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          SizedBox(
            height: 175,
            child: BlocBuilder<TimesheetBloc, TimesheetState>(
              builder: (context, state) {
                return state.maybeMap(
                  init: (initState) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: initState.projects.length,
                      itemBuilder: (context, index) {
                        return ButtonIconTigris(
                          bottomMargin: false,
                          shadow: true,
                          marginLeft: 30,
                          marginRight: 30,
                          leftIcon: TigrisImages.list,
                          title: initState.projects[index].values.first,
                          action: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                            context.read<TimesheetBloc>().add(
                                  TimesheetEvent.addCard(
                                    'Start/Stop',
                                    initState.projects[index].keys.first,
                                  ),
                                );
                          },
                        );
                      },
                    );
                  },
                  orElse: () => nil,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              'Add sheet without project',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
}
