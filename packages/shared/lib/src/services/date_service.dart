class DateService {
  List<int> getLastYears(int numberOfYears) {
    int yearNow = DateTime.now().year;
    final List<int> yearsList = [];
    for (int i = 0; i < numberOfYears; i++) {
      yearsList.add(yearNow);
      yearNow = yearNow - 1;
    }
    return yearsList;
  }

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  String timeConvertDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padRight(2, '0');
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return '${duration.inHours}:$twoDigitMinutes';
  }

  int dayOfYear(DateTime date) {
    return date.difference(DateTime(date.year)).inDays;
  }

  int isoWeekNumber(DateTime date) {
    final int daysToAdd = DateTime.thursday - date.weekday;
    final DateTime thursdayDate = daysToAdd > 0
        ? date.add(Duration(days: daysToAdd))
        : date.subtract(Duration(days: daysToAdd.abs()));
    final int dayOfYearThursday = dayOfYear(thursdayDate);
    return 1 + ((dayOfYearThursday - 1) / 7).floor();
  }
}
