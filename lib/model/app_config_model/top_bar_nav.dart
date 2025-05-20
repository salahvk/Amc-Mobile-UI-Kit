import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'top_bar_nav.g.dart';

@JsonSerializable()
class TopBarNav {
  List<Item>? items;
  String? color;

  TopBarNav({this.items, this.color});

  @override
  String toString() => 'TopBarNav(items: $items, color: $color)';

  factory TopBarNav.fromJson(Map<String, dynamic> json) {
    return _$TopBarNavFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopBarNavToJson(this);

  TopBarNav copyWith({
    List<Item>? items,
    String? color,
  }) {
    return TopBarNav(
      items: items ?? this.items,
      color: color ?? this.color,
    );
  }
}
