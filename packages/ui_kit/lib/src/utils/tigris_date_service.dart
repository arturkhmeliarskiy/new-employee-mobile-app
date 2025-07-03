import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TigrisDateService {
  static Future<DateTime?> selectDate(
    BuildContext context, {
    DateTime? selectedDate,
  }) async {
    final DateTime currentDate = DateTime(2000);
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? currentDate,
      firstDate: DateTime(1922),
      lastDate: DateTime(2100),
    );

    return pickedDate;
  }

  static String convertDateToLocal(String time) {
    final inputFormat = DateFormat('dd-MM-yyyy HH:mm');
    final dateTime = DateTime.tryParse(time)?.toUtc().toLocal() ?? DateTime(0);
    return inputFormat.format(dateTime);
  }
}
