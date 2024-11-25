/**
 * CREATE TABLE "PatternTypes" (
  "pattern_type_id" integer PRIMARY KEY,
  "type_name" varchar UNIQUE NOT NULL,
  "description" text,
  "static" boolean NOT NULL
);
 */

class PatternTypes {
  final int pattern_type_id;
  final String type_name;
  final String description;
  final bool static;

  PatternTypes({
    required this.pattern_type_id,
    required this.type_name,
    required this.description,
    required this.static,
  });

  PatternTypes copy({
    int? pattern_type_id,
    String? type_name,
    String? description,
    bool? static,
  }) =>
      PatternTypes(
        pattern_type_id: pattern_type_id ?? this.pattern_type_id,
        type_name: type_name ?? this.type_name,
        description: description ?? this.description,
        static: static ?? this.static,
      );

  static PatternTypes fromJson(Map<String, Object?> json) => PatternTypes(
        pattern_type_id: json['pattern_type_id'] as int,
        type_name: json['type_name'] as String,
        description: json['description'] as String,
        static: json['static'] as bool,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'pattern_type_id': pattern_type_id,
        'type_name': type_name,
        'description': description,
        'static': static,
      };
}