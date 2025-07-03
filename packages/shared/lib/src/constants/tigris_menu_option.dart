import 'package:easy_localization/easy_localization.dart';

class TigrisMenuOption {
  List<String> weekday = [
    'monday'.tr(),
    'tuesday'.tr(),
    'wednesday'.tr(),
    'thursday'.tr(),
    'friday'.tr(),
    'saturday'.tr(),
    'sunday'.tr()
  ];

  List<Map<String, String>> documentTypeList = [
    {
      'value': 'Contract',
      'label': 'Contract',
    },
    {
      'value': 'Phase agreement',
      'label': 'Phase agreement',
    },
    {
      'value': 'ID-document',
      'label': 'ID-document',
    },
    {
      'value': 'Advance payment',
      'label': 'Advance payment',
    },
    {
      'value': 'Timesheet attachment',
      'label': 'Timesheet attachment',
    },
    {
      'value': 'Project attachment',
      'label': 'Project attachment',
    },
    {
      'value': 'CV',
      'label': 'CV',
    },
    {
      'value': 'Application documents',
      'label': 'Other',
    },
  ];

  final List<String> sortTime = [
    'home_screen.total'.tr(),
    'home_screen.month'.tr(),
    'week'.tr(),
  ];

  List<Map<String, String>> languages = [
    {
      'language': 'English',
      'label': 'language_modal_window.lang_name1'.tr(),
      'value': 'en',
    },
    {
      'language': 'German',
      'label': 'language_modal_window.lang_name2'.tr(),
      'value': 'de',
    },
    {
      'language': 'Polish',
      'label': 'language_modal_window.lang_name3'.tr(),
      'value': 'pl',
    },
    {
      'language': 'Dutch',
      'label': 'language_modal_window.lang_name4'.tr(),
      'value': 'nl',
    },
    {
      'language': 'Portuguese',
      'label': 'language_modal_window.lang_name5'.tr(),
      'value': 'pt',
    },
    {
      'language': 'Romanian',
      'label': 'language_modal_window.lang_name6'.tr(),
      'value': 'ro',
    },
  ];
  List<String> titlePayslips = [
    'payslips_screen.item_drop_down_pay_slips'.tr(),
    'payslips_screen.item_drop_down_annual_statements'.tr()
  ];
  List<String> weekdays = [
    'calendar_screen.weekdays.monday'.tr(),
    'calendar_screen.weekdays.tuesday'.tr(),
    'calendar_screen.weekdays.wednesday'.tr(),
    'calendar_screen.weekdays.thursday'.tr(),
    'calendar_screen.weekdays.friday'.tr(),
    'calendar_screen.weekdays.saturday'.tr(),
    'calendar_screen.weekdays.sunday'.tr(),
  ];
}
