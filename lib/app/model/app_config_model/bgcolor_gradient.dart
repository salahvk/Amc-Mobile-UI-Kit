import 'package:json_annotation/json_annotation.dart';

part 'bgcolor_gradient.g.dart';

@JsonSerializable()
class BgcolorGradient {
  String? top;
  String? middle;
  String? bottom;

  BgcolorGradient({this.top, this.middle, this.bottom});

  @override
  String toString() {
    return 'BgcolorGradient(top: $top, middle: $middle, bottom: $bottom)';
  }

  factory BgcolorGradient.fromJson(Map<String, dynamic> json) {
    return _$BgcolorGradientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BgcolorGradientToJson(this);

  BgcolorGradient copyWith({
    String? top,
    String? middle,
    String? bottom,
  }) {
    return BgcolorGradient(
      top: top ?? this.top,
      middle: middle ?? this.middle,
      bottom: bottom ?? this.bottom,
    );
  }
}
