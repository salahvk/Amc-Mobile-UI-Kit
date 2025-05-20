import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  int? id;
  String? name;

  Status({this.id, this.name});

  @override
  String toString() => 'Status(id: $id, name: $name)';

  factory Status.fromJson(Map<String, dynamic> json) {
    return _$StatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  Status copyWith({
    int? id,
    String? name,
  }) {
    return Status(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
