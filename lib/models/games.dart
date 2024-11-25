/*
CREATE TABLE "Games" (
  "game_id" integer PRIMARY KEY,
  "room_id" integer NOT NULL,
  "admin_id" integer NOT NULL,
  "start_time" timestamp DEFAULT 'NOW()',
  "pattern_type_id" integer NOT NULL
);*/

class Games {
  final int game_id;
  final int room_id;
  final int admin_id;
  final DateTime start_time;
  final int pattern_type_id;

  Games({
    required this.game_id,
    required this.room_id,
    required this.admin_id,
    required this.start_time,
    required this.pattern_type_id,
  });

  Games copy({
    int? game_id,
    int? room_id,
    int? admin_id,
    DateTime? start_time,
    int? pattern_type_id,
  }) =>
      Games(
        game_id: game_id ?? this.game_id,
        room_id: room_id ?? this.room_id,
        admin_id: admin_id ?? this.admin_id,
        start_time: start_time ?? this.start_time,
        pattern_type_id: pattern_type_id ?? this.pattern_type_id,
      );

  static Games fromJson(Map<String, Object?> json) => Games(
        game_id: json['game_id'] as int,
        room_id: json['room_id'] as int,
        admin_id: json['admin_id'] as int,
        start_time: DateTime.parse(json['start_time'] as String),
        pattern_type_id: json['pattern_type_id'] as int,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'game_id': game_id,
        'room_id': room_id,
        'admin_id': admin_id,
        'start_time': start_time.toIso8601String(),
        'pattern_type_id': pattern_type_id,
      };
}