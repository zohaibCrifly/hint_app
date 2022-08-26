// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

var postdata = <Post>[
  Post(
    id: "1",
    title: "Why we get map - and why it's healthy",
    tag: "",
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Gladys Mccoy",
    categoryTile: "Article",
    categoryId: "1",
    image: "images/image1.jpg",
    userImage: "images/user1.jpg",
    date: "Sep 15",
  ),
  Post(
    id: "2",
    title: "Emotional Intelligence",
    tag: "Daniel Goleman",
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Recardo Flores",
    categoryTile: "Book",
    categoryId: "2",
    image: "images/image2.jpg",
    userImage: "images/user2.jpg",
    date: "Sep 15",
  ),
  Post(
    id: "3",
    title: "The difference between healthy and unhealthy love",
    tag: "",
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Arthur Fisher",
    categoryTile: "Video",
    categoryId: "3",
    image: "images/image3.jpg",
    userImage: "images/user3.jpg",
    date: "Sep 15",
  ),
  Post(
    id: "4",
    title: "Episode 1",
    tag: "Hatred",
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Gloria Nguyen",
    categoryTile: "Podcast",
    categoryId: "4",
    image: "images/image4.jpg",
    userImage: "images/user4.jpg",
    date: "Sep 15",
  ),
  Post(
    id: "5",
    title: "How to Develop Effective Work Probablity",
    tag: "",
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Haroland Pina",
    categoryTile: "Article",
    categoryId: "1",
    image: "images/image5.jpg",
    userImage: "images/user5.jpg",
    date: "Sep 15",
  ),
  Post(
    id: "6",
    title: "Why we get map - and why it's healthy",
    tag: '',
    description:
        "Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. Here will be the description. ",
    userName: "Gladys Mccoy",
    categoryTile: "Article",
    categoryId: "1",
    image: "images/image1.jpg",
    userImage: "images/user1.jpg",
    date: "Sep 15",
  )
];

class Post {
  Post({
    required this.id,
    required this.title,
    required this.tag,
    required this.description,
    required this.userName,
    required this.categoryTile,
    required this.categoryId,
    required this.image,
    required this.userImage,
    required this.date,
  });

  String id;
  String title;
  String tag;
  String description;
  String userName;
  String categoryTile;
  String categoryId;
  String image;
  String userImage;
  String date;

  factory Post.fromRawJson(String str) => Post.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        tag: json["tag"],
        description: json["description"],
        userName: json["userName"],
        categoryTile: json["categoryTile"],
        categoryId: json["categoryId"],
        image: json["image"],
        userImage: json["userImage"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "tag": tag,
        "description": description,
        "userName": userName,
        "categoryTile": categoryTile,
        "categoryId": categoryId,
        "image": image,
        "userImage": userImage,
        "date": date,
      };
}
