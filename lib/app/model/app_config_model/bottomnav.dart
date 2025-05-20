import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'bottomnav.g.dart';

@JsonSerializable()
class Bottomnav {
  int? tabCount;
  List<Item>? items;

  Bottomnav({this.tabCount, this.items});

  @override
  String toString() => 'Bottomnav(tabCount: $tabCount, items: $items)';

  factory Bottomnav.fromJson(Map<String, dynamic> json) {
    return _$BottomnavFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BottomnavToJson(this);

  Bottomnav copyWith({
    int? tabCount,
    List<Item>? items,
  }) {
    return Bottomnav(
      tabCount: tabCount ?? this.tabCount,
      items: items ?? this.items,
    );
  }
}
