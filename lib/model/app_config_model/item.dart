import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? name;
  String? visbileTo;
  String? icon;
  String? iconType;
  String? navigateTo;
  int? visibilityByrole;

  Item(
      {this.name,
      this.visbileTo,
      this.icon,
      this.iconType,
      this.navigateTo,
      this.visibilityByrole});

  @override
  String toString() {
    return 'Item(name: $name, visbileTo: $visbileTo, icon: $icon, iconType: $iconType, navigateTo: $navigateTo,visibilityByrole: $visibilityByrole)';
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  Item copyWith(
      {String? name,
      String? visbileTo,
      String? icon,
      String? iconType,
      String? navigateTo,
      int? visibilityByrole}) {
    return Item(
        name: name ?? this.name,
        visbileTo: visbileTo ?? this.visbileTo,
        icon: icon ?? this.icon,
        iconType: iconType ?? this.iconType,
        navigateTo: navigateTo ?? this.navigateTo,
        visibilityByrole: visibilityByrole ?? this.visibilityByrole);
  }
}
