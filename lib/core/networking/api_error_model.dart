import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel{
  String? message;
  @JsonKey(name: 'data')
  Map<String,dynamic>? errors;
  int? code;

  ApiErrorModel({this.message,this.errors,this.code});

  factory ApiErrorModel.fromJson(Map<String,dynamic> json) => _$ApiErrorModelFromJson(json);

  String getAllErrors(){
    if (errors == null || errors is List && (errors as List).isEmpty) {
      return message ?? "Unknown Error occurred";
    }

    if (errors is Map<String, dynamic>) {
      final errorMessage =
      (errors as Map<String, dynamic>).entries.map((entry) {
        final value = entry.value;
        return "${value.join(',')}";
      }).join('\n');

      return errorMessage;
    } else if (errors is List) {
      return (errors as List).join('\n');
    }

    return message ?? "Unknown Error occurred";
  }
}