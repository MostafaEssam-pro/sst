import 'package:intl/intl.dart';

class TimeConfig {
  static DateTime now = DateTime.now();

  static getCurrentTime() {}
}
getFormatedDate(_date) {
  var inputFormat = DateFormat('yyyy-MM-dd');
  var inputDate = inputFormat.parse(_date);
  var outputFormat = DateFormat('dd/MM/yyyy');
  return outputFormat.format(inputDate);
}