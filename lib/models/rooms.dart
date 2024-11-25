/*
CREATE TABLE "Rooms" (
  "room_id" integer PRIMARY KEY,
  "room_name" varchar UNIQUE NOT NULL
);

 */

class Rooms {
  final int room_id;
  final String room_name;

  Rooms({
    required this.room_id,
    required this.room_name,
  });

  Rooms copy({
    int? room_id,
    String? room_name,
  }) =>
      Rooms(
        room_id: room_id ?? this.room_id,
        room_name: room_name ?? this.room_name,
      );

  static Rooms fromJson(Map<String, Object?> json) => Rooms(
        room_id: json['room_id'] as int,
        room_name: json['room_name'] as String,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'room_id': room_id,
        'room_name': room_name,
      };
}