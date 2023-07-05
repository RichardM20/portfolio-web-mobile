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
  List<String>? technologies;
  String? images;
  String? repositoryLink;
  StoresLinks? storesLinks;
  bool? published;

  ProjectModel({
    this.name,
    this.description,
    this.technologies,
    this.images,
    this.repositoryLink,
    this.storesLinks,
    this.published,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json["name"],
        description: json["description"],
        technologies: json["technologies"] == null
            ? []
            : List<String>.from(json["technologies"]!.map((x) => x)),
        images: json["images"],
        repositoryLink: json["repository_link"],
        storesLinks: json["stores_links"] == null
            ? null
            : StoresLinks.fromJson(json["stores_links"]),
        published: json["published"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "technologies": technologies == null
            ? []
            : List<dynamic>.from(technologies!.map((x) => x)),
        "images": images,
        "repository_link": repositoryLink,
        "stores_links": storesLinks?.toJson(),
        "published": published,
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
