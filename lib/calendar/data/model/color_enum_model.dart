import 'package:custom_calendar/calendar/domain/entities/color_enum.dart';

class ColorEnumModel extends ColorEnum {
  const ColorEnumModel({
    required super.type,
    required super.color,
  });

  factory ColorEnumModel.fromJson(Map<String, dynamic> json) {
    return ColorEnumModel(
      type: json['type'],
      color: json['color'],
    );
  }
}
