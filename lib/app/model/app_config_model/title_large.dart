import 'package:json_annotation/json_annotation.dart';

part 'title_large.g.dart';

@JsonSerializable()
class TitleLarge {
  String? color;
  int? fontSize;

  TitleLarge({this.color, this.fontSize});

  @override
  String toString() => 'TitleLarge(color: $color, fontSize: $fontSize)';

  factory TitleLarge.fromJson(Map<String, dynamic> json) {
    return _$TitleLargeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TitleLargeToJson(this);

  TitleLarge copyWith({
    String? color,
    int? fontSize,
  }) {
    return TitleLarge(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
