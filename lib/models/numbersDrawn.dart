/**
 * CREATE TABLE "NumbersDrawn" (
  "number_id" integer PRIMARY KEY,
  "game_id" integer NOT NULL,
  "number" varchar NOT NULL,
  "drawn_time" timestamp DEFAULT 'NOW()'
);
 */

class NumbersDrawn {
  final int number_id;
  final int game_id;
  final String number;
  final DateTime drawn_time;

  NumbersDrawn({
    required this.number_id,
    required this.game_id,
    required this.number,
    required this.drawn_time,
  });

  NumbersDrawn copy({
    int? number_id,
    int? game_id,
    String? number,
    DateTime? drawn_time,
  }) =>
      NumbersDrawn(
        number_id: number_id ?? this.number_id,
        game_id: game_id ?? this.game_id,
        number: number ?? this.number,
        drawn_time: drawn_time ?? this.drawn_time,
      );

  static NumbersDrawn fromJson(Map<String, Object?> json) => NumbersDrawn(
        number_id: json['number_id'] as int,
        game_id: json['game_id'] as int,
        number: json['number'] as String,
        drawn_time: DateTime.parse(json['drawn_time'] as String),
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'number_id': number_id,
        'game_id': game_id,
        'number': number,
        'drawn_time': drawn_time.toIso8601String(),
      };
}