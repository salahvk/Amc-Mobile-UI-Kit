import 'package:flutter/material.dart';

Future<DateTime?> chooseDate(
    {required DateTime firstDate,
    required DateTime lastDate,
    required BuildContext context}) async {
  DateTime selectedDate = DateTime.now();
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: firstDate,
    lastDate: lastDate,
    cancelText: 'Close',
    confirmText: 'Confirm',
    errorFormatText: 'Enter a valid date',
    errorInvalidText: 'Enter a valid date range',
    fieldHintText: 'Date/Month/Year',
    builder: (context, child) {
      return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Colors.white,
              onSurface: Theme.of(context).colorScheme.primary,
              surface: Colors.white,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!);
    },
  );

  if (pickedDate != null) {
    selectedDate = pickedDate;
  }

  return pickedDate;
}

Future<TimeOfDay?> chooseTime({required BuildContext context}) async {
  TimeOfDay selectedTime = TimeOfDay.now();
  TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: selectedTime,
    cancelText: 'Close',
    confirmText: 'Confirm',
    errorInvalidText: 'Enter a valid date range',
    builder: (context, child) {
      return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Colors.white,
              onSurface: Theme.of(context).colorScheme.primary,
            ),
            timePickerTheme: TimePickerThemeData(
              dayPeriodColor: Theme.of(context).colorScheme.primary,
              dayPeriodTextColor:
                  WidgetStateColor.resolveWith((Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return Theme.of(context).colorScheme.primary;
              }),
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!);
    },
  );

  if (pickedTime != null) {
    selectedTime = pickedTime;
  }

  return pickedTime;
}
