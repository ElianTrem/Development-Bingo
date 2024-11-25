/**
 * CREATE TABLE "CardboardCells" (
  "cell_id" integer PRIMARY KEY,
  "cardboard_id" integer NOT NULL,
  "column" char(1) NOT NULL,
  "row" integer NOT NULL,
  "number" integer
);
 */

class CardboardCells {
  final int cell_id;
  final int cardboard_id;
  final String column;
  final int row;
  final int? number;

  CardboardCells({
    required this.cell_id,
    required this.cardboard_id,
    required this.column,
    required this.row,
    this.number,
  });

  CardboardCells copy({
    int? cell_id,
    int? cardboard_id,
    String? column,
    int? row,
    int? number,
  }) =>
      CardboardCells(
        cell_id: cell_id ?? this.cell_id,
        cardboard_id: cardboard_id ?? this.cardboard_id,
        column: column ?? this.column,
        row: row ?? this.row,
        number: number ?? this.number,
      );

  static CardboardCells fromJson(Map<String, Object?> json) => CardboardCells(
        cell_id: json['cell_id'] as int,
        cardboard_id: json['cardboard_id'] as int,
        column: json['column'] as String,
        row: json['row'] as int,
        number: json['number'] as int?,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'cell_id': cell_id,
        'cardboard_id': cardboard_id,
        'column': column,
        'row': row,
        'number': number,
      };
}