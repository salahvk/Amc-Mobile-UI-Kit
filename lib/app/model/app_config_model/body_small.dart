import 'package:json_annotation/json_annotation.dart';

part 'body_small.g.dart';

@JsonSerializable()
class BodySmall {
  String? color;
  int? fontSize;

  BodySmall({this.color, this.fontSize});

  @override
  String toString() => 'BodySmall(color: $color, fontSize: $fontSize)';

  factory BodySmall.fromJson(Map<String, dynamic> json) {
    return _$BodySmallFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BodySmallToJson(this);

  BodySmall copyWith({
    String? color,
    int? fontSize,
  }) {
    return BodySmall(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}
