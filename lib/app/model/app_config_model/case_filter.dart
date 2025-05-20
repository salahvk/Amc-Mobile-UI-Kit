import 'package:json_annotation/json_annotation.dart';

import 'status.dart';
import 'type.dart';

part 'case_filter.g.dart';

@JsonSerializable()
class CaseFilter {
  List<Status>? status;
  List<Type>? type;

  CaseFilter({this.status, this.type});

  @override
  String toString() => 'CaseFilter(status: $status, type: $type)';

  factory CaseFilter.fromJson(Map<String, dynamic> json) {
    return _$CaseFilterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CaseFilterToJson(this);

  CaseFilter copyWith({
    List<Status>? status,
    List<Type>? type,
  }) {
    return CaseFilter(
      status: status ?? this.status,
      type: type ?? this.type,
    );
  }
}
