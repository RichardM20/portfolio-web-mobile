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
  int? rate;
  DateTime? publishedAt;
  String? message;

  TestimonialModel({
    this.username,
    this.rate,
    this.publishedAt,
    this.message,
  });

  factory TestimonialModel.fromJson(Map<String, dynamic> json) =>
      TestimonialModel(
        username: json["username"],
        rate: json["rate"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "rate": rate,
        "publishedAt": publishedAt?.toIso8601String(),
        "message": message,
      };
}
