/**
 * 
 * CREATE TABLE "WinningPatterns" (
  "cell_id" integer PRIMARY KEY,
  "pattern_type_id" integer NOT NULL,
  "column" char(1) NOT NULL,
  "row" integer NOT NULL
);
 */

class WinningPatterns {
  final int cell_id;
  final int pattern_type_id;
  final String column;
  final int row;

  WinningPatterns({
    required this.cell_id,
    required this.pattern_type_id,
    required this.column,
    required this.row,
  });

  WinningPatterns copy({
    int? cell_id,
    int? pattern_type_id,
    String? column,
    int? row,
  }) =>
      WinningPatterns(
        cell_id: cell_id ?? this.cell_id,
        pattern_type_id: pattern_type_id ?? this.pattern_type_id,
        column: column ?? this.column,
        row: row ?? this.row,
      );

  static WinningPatterns fromJson(Map<String, Object?> json) => WinningPatterns(
        cell_id: json['cell_id'] as int,
        pattern_type_id: json['pattern_type_id'] as int,
        column: json['column'] as String,
        row: json['row'] as int,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'cell_id': cell_id,
        'pattern_type_id': pattern_type_id,
        'column': column,
        'row': row,
      };
}