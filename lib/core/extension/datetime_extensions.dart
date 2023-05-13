import 'package:intl/intl.dart';
import 'package:nyt/config/config.dart';

extension DateTimeExtension on DateTime {
  String convertDateTimeInFormat({String? strFormat}) {
    String formattedDateTime =
        DateFormat(strFormat ?? AppString.normalDateFormat).format(this);
    return formattedDateTime;
  }
}
