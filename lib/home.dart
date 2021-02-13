import 'package:flutter/material.dart';
import 'bulletin.dart';
import 'chat.dart';
// untuk tambahan
import 'dart:convert';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hourNow = int.parse(DateTime.now().hour.toString());
    var greet = "";
    if (hourNow < 12) {
      greet = "Selamat pagi";
    } else if (hourNow < 16) {
      greet = "Selamat siang";
    } else if (hourNow < 18) {
      greet = "Selamat sore";
    } else {
      greet = "Selamat malam";
    }

    return ListView(
      children: [
        Container(
          // header biar hangat aja
          child: Row(
            children: [
              // TODO: sapaan
              Text("${greet}, Firstname lastname."),
              // image
            ],
          ),
        ),

        // chat2 sama kenalan
        Text("Chats",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ChatHeader(),
        ChatHeader(),
        ChatHeader(),

        // TODO: rekomendasi lomba
      ],
    );
  }
}

class Profile {
  int id;
  String name;
  int param;
  int rating;

  Profile({this.id = 0, this.name, this.param, this.rating});

  factory Profile.fromJson(Map<String, dynamic> map) {
    return Profile(
        id: map["id"],
        name: map["name"],
        param: map["param"],
        rating: map["rating"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "param": param, "rating": rating};
  }

  @override
  String toString() {
    return 'Profile{id: $id, name: $name, param: $param, rating: $rating}';
  }
}

List<Profile> profileFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Profile>.from(data.map((item) => Profile.fromJson(item)));
}

String profileToJson(Profile data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
