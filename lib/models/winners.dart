/**
 * CREATE TABLE "Winners" (
  "winner_id" integer PRIMARY KEY,
  "player_id" integer NOT NULL,
  "game_id" integer NOT NULL,
  "cardboard_id" integer NOT NULL,
  "winning_time" timestamp DEFAULT 'NOW()',
  "validation_status" varchar DEFAULT 'pending'
);
 */

class Winners {
  final int winner_id;
  final int player_id;
  final int game_id;
  final int cardboard_id;
  final DateTime winning_time;
  final String validation_status;

  Winners({
    required this.winner_id,
    required this.player_id,
    required this.game_id,
    required this.cardboard_id,
    required this.winning_time,
    required this.validation_status,
  });

  Winners copy({
    int? winner_id,
    int? player_id,
    int? game_id,
    int? cardboard_id,
    DateTime? winning_time,
    String? validation_status,
  }) =>
      Winners(
        winner_id: winner_id ?? this.winner_id,
        player_id: player_id ?? this.player_id,
        game_id: game_id ?? this.game_id,
        cardboard_id: cardboard_id ?? this.cardboard_id,
        winning_time: winning_time ?? this.winning_time,
        validation_status: validation_status ?? this.validation_status,
      );

  static Winners fromJson(Map<String, Object?> json) => Winners(
        winner_id: json['winner_id'] as int,
        player_id: json['player_id'] as int,
        game_id: json['game_id'] as int,
        cardboard_id: json['cardboard_id'] as int,
        winning_time: DateTime.parse(json['winning_time'] as String),
        validation_status: json['validation_status'] as String,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'winner_id': winner_id,
        'player_id': player_id,
        'game_id': game_id,
        'cardboard_id': cardboard_id,
        'winning_time': winning_time.toIso8601String(),
        'validation_status': validation_status,
      };
}