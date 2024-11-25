/*
CREATE TABLE "Cardboards" (
  "cardboard_id" integer PRIMARY KEY,
  "ticket_id" integer NOT NULL
);
 */

class Cardboards {
  final int cardboard_id;
  final int ticket_id;

  Cardboards({
    required this.cardboard_id,
    required this.ticket_id,
  });

  Cardboards copy({
    int? cardboard_id,
    int? ticket_id,
  }) =>
      Cardboards(
        cardboard_id: cardboard_id ?? this.cardboard_id,
        ticket_id: ticket_id ?? this.ticket_id,
      );

  static Cardboards fromJson(Map<String, Object?> json) => Cardboards(
        cardboard_id: json['cardboard_id'] as int,
        ticket_id: json['ticket_id'] as int,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'cardboard_id': cardboard_id,
        'ticket_id': ticket_id,
      };
}