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
    if(errors == null && errors!.isEmpty) return message ?? 'Unknown error occurred';

    return errors!.entries.map((entry) => entry.value.join(',')).join('\n');
  }
}