import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'app_config_model.g.dart';

@JsonSerializable()
class AppConfigModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  AppConfigModel({this.statusCode, this.status, this.message, this.data});

  @override
  String toString() {
    return 'AppConfigModel(statusCode: $statusCode, status: $status, message: $message, data: $data)';
  }

  factory AppConfigModel.fromJson(Map<String, dynamic> json) {
    return _$AppConfigModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AppConfigModelToJson(this);

  AppConfigModel copyWith({
    int? statusCode,
    String? status,
    String? message,
    Data? data,
  }) {
    return AppConfigModel(
      statusCode: statusCode ?? this.statusCode,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
