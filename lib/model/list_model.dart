// To parse this JSON data, do
//
//     final listmodel = listmodelFromJson(jsonString);

import 'dart:convert';

List<Listmodel> listmodelFromJson(String str) => List<Listmodel>.from(json.decode(str).map((x) => Listmodel.fromJson(x)));

String listmodelToJson(List<Listmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Listmodel {
    int? userId;
    int? id;
    String? title;
    String? body;

    Listmodel({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory Listmodel.fromJson(Map<String, dynamic> json) => Listmodel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
