import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/calendar/calendar_screen.dart';
import 'package:tigris/screen/home/home_screen.dart';
import 'package:tigris/screen/payslips/payslips_screen.dart';
import 'package:tigris/screen/profile/profile_screen.dart';
import 'package:tigris/screen/timesheet/sheet_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisNavigationBar extends StatefulWidget {
  final int selectIndex;
  const TigrisNavigationBar({
    Key? key,
    this.selectIndex = 0,
  }) : super(key: key);

  @override
  State<TigrisNavigationBar> createState() => _TigrisNavigationBarState();
}

class _TigrisNavigationBarState extends State<TigrisNavigationBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.selectIndex;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 1) {
        showModalBottomSheet<void>(
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (ctx) => const PayslipsScreen(),
        );
      } else if (index == 2) {
        showModalBottomSheet<void>(
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (ctx) => const CalendarScreen(),
        );
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Widget> _widgetOptions = <Widget>[
      HomeScreen(
        numberPage: _onItemTapped,
      ),
      const SizedBox(),
      const CalendarScreen(),
      ProfileScreen(
        numberPage: _onItemTapped,
      ),
    ];

    return BlocListener<AppBloc, AppState>(
      listener: (context, state) => state.maybeWhen(
        appInProgress: () {
          return LoadingDialog.show(context);
        },
        preloadDataCompleted: (
          isAuthed,
          isPinCode,
          languageTag,
          userName,
          userImage,
          newsList,
          workInfo,
          message,
        ) {
          return LoadingDialog.close();
        },
        errorConnection: (response) {
          return TigrisMessage().showOverlay(context, response, false);
        },
        orElse: () {
          return null;
        },
      ),
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          bool selectStete = true;
          current.maybeMap(
            errorConnection: (_) {
              selectStete = false;
            },
            orElse: () => null,
          );
          return selectStete;
        },
        builder: (context, state) {
          return state.maybeMap(
            notRegistered: (_) {
              return Scaffold(
                body: _widgetOptions.elementAt(0),
              );
            },
            appInProgress: (_) {
              return Container(
                color: TigrisColor.white,
                child: Container(
                  color: TigrisColor.greenOpacity20,
                ),
              );
            },
            orElse: () {
              return Scaffold(
                body: _widgetOptions.elementAt(_selectedIndex),
                bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                    border: Border.all(
                      color: TigrisColor.blackOpacity10,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: BottomNavigationBar(
                      selectedFontSize: 0,
                      unselectedFontSize: 0,
                      showUnselectedLabels: false,
                      showSelectedLabels: false,
                      backgroundColor: Colors.white,
                      type: BottomNavigationBarType.fixed,
                      items: BottomNavBarItem.values.map((item) {
                        return BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.only(
                              right: item.index == 1 ? 30 : 0,
                              left: item.index == 2 ? 30 : 0,
                            ),
                            child: Column(
                              children: [
                                TigrisImage(
                                  image: item.icon,
                                  color: item.index == _selectedIndex
                                      ? TigrisColor.appGreen
                                      : TigrisColor.appBlack,
                                  width: 32.0,
                                ),
                                Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: item.index == _selectedIndex
                                        ? TigrisColor.appGreen
                                        : TigrisColor.appBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          label: '',
                        );
                      }).toList(),
                      currentIndex: _selectedIndex,
                      selectedItemColor: theme.primaryColor,
                      onTap: _onItemTapped,
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: const TigrisImage(
                    image: TigrisImages.plus,
                    color: Colors.black,
                    width: 32.0,
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const SheetModalWindow(),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
