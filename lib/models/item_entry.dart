// To parse this JSON data, do
//
//     final itemEntry = itemEntryFromJson(jsonString);

import 'dart:convert';

List<ItemEntry> itemEntryFromJson(String str) =>
    List<ItemEntry>.from(json.decode(str).map((x) => ItemEntry.fromJson(x)));

String itemEntryToJson(List<ItemEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemEntry {
  Model model;
  String pk;
  Fields fields;

  ItemEntry({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  String description;
  int price;
  int stock;

  Fields({
    required this.user,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
      };
}

enum Model { MAIN_ITEMENTRY }

final modelValues = EnumValues({"main.itementry": Model.MAIN_ITEMENTRY});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
