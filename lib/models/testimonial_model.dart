// To parse this JSON data, do
//
//     final testimonialModel = testimonialModelFromJson(jsonString);

import 'dart:convert';

TestimonialModel testimonialModelFromJson(String str) =>
    TestimonialModel.fromJson(json.decode(str));

String testimonialModelToJson(TestimonialModel data) =>
    json.encode(data.toJson());

class TestimonialModel {
  String? username;
  double? rate;
  DateTime? publishedAt;
  String? message;
  String? profession;
  String? profileimage;

  TestimonialModel({
    this.username,
    this.rate,
    this.profession,
    this.profileimage,
    this.publishedAt,
    this.message,
  });

  factory TestimonialModel.fromJson(Map<String, dynamic> json) =>
      TestimonialModel(
        username: json["username"],
        profession: json['profession'],
        profileimage: json["profile_image"],
        rate: json["rate"],
        publishedAt: json["publishedAt"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "rate": rate,
        "publishedAt": publishedAt,
        "message": message,
      };
}
