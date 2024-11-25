/*
CREATE TABLE "Roles" (
  "role_id" integer PRIMARY KEY,
  "role_name" varchar UNIQUE NOT NULL
);
 */

class Roles {
  final int role_id;
  final String role_name;

  Roles({
    required this.role_id,
    required this.role_name,
  });

  Roles copy({
    int? role_id,
    String? role_name,
  }) =>
      Roles(
        role_id: role_id ?? this.role_id,
        role_name: role_name ?? this.role_name,
      );

  static Roles fromJson(Map<String, Object?> json) => Roles(
        role_id: json['role_id'] as int,
        role_name: json['role_name'] as String,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'role_id': role_id,
        'role_name': role_name,
      };
}