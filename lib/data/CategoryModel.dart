// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

class Category {
  Category({
    required this.id,
    required this.title,
  });

  String id;
  String title;

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}
