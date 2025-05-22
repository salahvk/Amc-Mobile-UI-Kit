import 'package:intl/intl.dart';


String formatDateTime_YMD(String date) {
  if (date != "") {
    DateTime dateTime = DateTime.parse(date);
    String formatedDateTime = DateFormat("yyyy-MM-dd").format(dateTime);
    return formatedDateTime;
  }
  return "";
}


String formatDateIntoDMY(DateTime? date) {
  if (date != null) {
    DateFormat formatter = DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(date);
    return formattedDate;
  }
  return "";
}

String dMYHformate(String? dateString) {
  if (dateString != '') {
    DateTime dateTime = DateTime.parse(dateString ?? '');

    DateFormat dateFormat = DateFormat('dd-MM-yyyy hh:mm a');

    return dateFormat.format(dateTime);
  }
  return "";
}


String formatToDayMonthTime(String? dateString) {
  if (dateString != '') {
    DateTime dateTime = DateTime.parse(dateString ?? '');

    DateFormat dateFormat = DateFormat('d MMMM yyyy h:mm a');

    return dateFormat.format(dateTime);
  }
  return "";
}
