import 'package:json_annotation/json_annotation.dart';

import 'configuration.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  bool? status;
  Configuration? configuration;

  Data({this.status, this.configuration});

  @override
  String toString() {
    return 'Data(status: $status, configuration: $configuration)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    bool? status,
    Configuration? configuration,
  }) {
    return Data(
      status: status ?? this.status,
      configuration: configuration ?? this.configuration,
    );
  }
}
