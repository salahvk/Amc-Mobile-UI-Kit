import 'package:flutter/material.dart';

class DateHelper {
  static bool canCaseStartToday(
      String? scheduleDateString, String? endDateString) {
    if (scheduleDateString == null ||
        scheduleDateString.isEmpty ||
        endDateString == null ||
        endDateString.isEmpty) {
      return false;
    }
    DateTime scheduledDate =
        DateUtils.dateOnly(DateTime.parse(scheduleDateString));
    DateTime endDate = DateUtils.dateOnly(DateTime.parse(endDateString));
    DateTime currentDate = DateUtils.dateOnly(DateTime.now());
    return (currentDate.isAfter(scheduledDate) ||
                (currentDate.isAtSameMomentAs(scheduledDate) ||
                    currentDate.isAfter(scheduledDate))) &&
            currentDate.isBefore(endDate) ||
        currentDate.isAtSameMomentAs(endDate);
  }
}
