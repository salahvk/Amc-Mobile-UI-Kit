import 'package:json_annotation/json_annotation.dart';

part 'type.g.dart';

@JsonSerializable()
class Type {
  int? id;
  String? name;

  Type({this.id, this.name});

  @override
  String toString() => 'Type(id: $id, name: $name)';

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);

  Type copyWith({
    int? id,
    String? name,
  }) {
    return Type(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
