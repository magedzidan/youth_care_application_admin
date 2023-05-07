import 'dart:convert';

class EventModel {
  String id;
  String name;
  String description;
  String image;
  String date;
  String time;
  String category;
  List<String>? likes;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.date,
    required this.time,
    required this.category,
    this.likes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'date': date,
      'time': time,
      'category': category,
      'likes': likes,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
      date: map['date'] ?? '',
      time: map['time'] ?? '',
      category: map['category'] ?? '',
      likes: List<String>.from(map['likes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source));
}
