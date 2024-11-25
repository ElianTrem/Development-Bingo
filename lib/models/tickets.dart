/*
CREATE TABLE "Tickets" (
  "ticket_id" integer PRIMARY KEY,
  "player_id" integer NOT NULL,
  "game_id" integer NOT NULL,
  "purchase_time" timestamp DEFAULT 'NOW()'
);
 */

class Tickets {
  final int ticket_id;
  final int player_id;
  final int game_id;
  final DateTime purchase_time;

  Tickets({
    required this.ticket_id,
    required this.player_id,
    required this.game_id,
    required this.purchase_time,
  });

  Tickets copy({
    int? ticket_id,
    int? player_id,
    int? game_id,
    DateTime? purchase_time,
  }) =>
      Tickets(
        ticket_id: ticket_id ?? this.ticket_id,
        player_id: player_id ?? this.player_id,
        game_id: game_id ?? this.game_id,
        purchase_time: purchase_time ?? this.purchase_time,
      );

  static Tickets fromJson(Map<String, Object?> json) => Tickets(
        ticket_id: json['ticket_id'] as int,
        player_id: json['player_id'] as int,
        game_id: json['game_id'] as int,
        purchase_time: DateTime.parse(json['purchase_time'] as String),
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'ticket_id': ticket_id,
        'player_id': player_id,
        'game_id': game_id,
        'purchase_time': purchase_time.toIso8601String(),
      };
}