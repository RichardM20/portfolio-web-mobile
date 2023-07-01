// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProjectModel projectModelFromJson(String str) =>
    ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

class ProjectModel {
  String? name;
  String? description;
  bool? published;
  String? repositoryLink;
  StoresLinks? storesLinks;
  List<String>? technologies;
  String? images;

  ProjectModel({
    this.name,
    this.description,
    this.published,
    this.repositoryLink,
    this.storesLinks,
    this.technologies,
    this.images,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json["name"],
        description: json["description"],
        published: json["published"],
        repositoryLink: json["repository_link"],
        storesLinks: json["stores_links"] == null
            ? null
            : StoresLinks.fromJson(json["stores_links"]),
        technologies: json["technologies"] == null
            ? []
            : List<String>.from(json["technologies"]!.map((x) => x)),
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "published": published,
        "repository_link": repositoryLink,
        "stores_links": storesLinks?.toJson(),
        "technologies": technologies == null
            ? []
            : List<dynamic>.from(technologies!.map((x) => x)),
        "images": images,
      };
}

class StoresLinks {
  String? appstore;
  String? playstore;

  StoresLinks({
    this.appstore,
    this.playstore,
  });

  factory StoresLinks.fromJson(Map<String, dynamic> json) => StoresLinks(
        appstore: json["appstore"],
        playstore: json["playstore"],
      );

  Map<String, dynamic> toJson() => {
        "appstore": appstore,
        "playstore": playstore,
      };
}
