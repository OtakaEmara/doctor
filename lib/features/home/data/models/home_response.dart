import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse{
  String message;
  List<Data> data;

  HomeResponse({required this.message,required this.data});

  factory HomeResponse.fromJson(Map<String,dynamic> json) => _$HomeResponseFromJson(json);
}

@JsonSerializable()
class Data{
  int id;
  String name;
  List<Doctors> doctors;

  Data({required this.id,required this.name,required this.doctors});

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Doctors{
  int id;
  String name;
  String email;
  String phone;
  String photo;
  String gender;
  String degree;
  @JsonKey(name: 'appoint_price')
  String price;

  Doctors({
    required this.id,required this.name,required this.email,required this.phone,required this.photo,
    required this.gender,required this.degree,required this.price
  });

  factory Doctors.fromJson(Map<String,dynamic> json) => _$DoctorsFromJson(json);
}