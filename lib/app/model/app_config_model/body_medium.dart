import 'package:json_annotation/json_annotation.dart';

part 'body_medium.g.dart';

@JsonSerializable()
class BodyMedium {
  String? color;
  int? fontSize;

  BodyMedium({this.color, this.fontSize});

  @override
  String toString() => 'BodyMedium(color: $color, fontSize: $fontSize)';

  factory BodyMedium.fromJson(Map<String, dynamic> json) {
    return _$BodyMediumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BodyMediumToJson(this);

  BodyMedium copyWith({
    String? color,
    int? fontSize,
  }) {
    return BodyMedium(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
