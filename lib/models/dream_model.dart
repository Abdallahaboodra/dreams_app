import 'package:flutter/cupertino.dart';

class DreamModel {
  String titleText;
  String textDreamType;
  String desText;
  String dateText;
  String viewText;
  Icon iconDreamType;
  Icon iconDate;
  Icon iconView;
  DreamModel({
    required this.dateText,
    required this.desText,
    required this.iconDate,
    required this.iconDreamType,
    required this.iconView,
    required this.textDreamType,
    required this.titleText,
    required this.viewText,
  });
}
