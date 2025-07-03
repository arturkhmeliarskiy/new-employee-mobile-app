import 'package:easy_localization/easy_localization.dart';
import 'package:ui_kit/ui_kit.dart';

enum BottomNavBarItem { home, inbox, calendar, profile }

extension BottomNavBarExtension on BottomNavBarItem {
  String get title {
    switch (this) {
      case BottomNavBarItem.home:
        return 'bottom_nav_bar_item.home'.tr();
      case BottomNavBarItem.inbox:
        return 'bottom_nav_bar_item.pay_slips'.tr();
      case BottomNavBarItem.calendar:
        return 'bottom_nav_bar_item.calendar'.tr();
      case BottomNavBarItem.profile:
        return 'bottom_nav_bar_item.profile'.tr();
    }
  }

  String get icon {
    switch (this) {
      case BottomNavBarItem.home:
        return TigrisIcons.home;
      case BottomNavBarItem.inbox:
        return TigrisIcons.inbox;
      case BottomNavBarItem.calendar:
        return TigrisIcons.calendar;
      case BottomNavBarItem.profile:
        return TigrisIcons.user;
    }
  }
}
