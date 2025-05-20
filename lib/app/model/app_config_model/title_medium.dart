import 'package:json_annotation/json_annotation.dart';

part 'title_medium.g.dart';

@JsonSerializable()
class TitleMedium {
  String? color;
  int? fontSize;

  TitleMedium({this.color, this.fontSize});

  @override
  String toString() => 'TitleMedium(color: $color, fontSize: $fontSize)';

  factory TitleMedium.fromJson(Map<String, dynamic> json) {
    return _$TitleMediumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TitleMediumToJson(this);

  TitleMedium copyWith({
    String? color,
    int? fontSize,
  }) {
    return TitleMedium(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
