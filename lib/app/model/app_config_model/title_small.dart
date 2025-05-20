import 'package:json_annotation/json_annotation.dart';

part 'title_small.g.dart';

@JsonSerializable()
class TitleSmall {
  String? color;
  int? fontSize;

  TitleSmall({this.color, this.fontSize});

  @override
  String toString() => 'TitleSmall(color: $color, fontSize: $fontSize)';

  factory TitleSmall.fromJson(Map<String, dynamic> json) {
    return _$TitleSmallFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TitleSmallToJson(this);

  TitleSmall copyWith({
    String? color,
    int? fontSize,
  }) {
    return TitleSmall(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
