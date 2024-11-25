// ignore_for_file: non_constant_identifier_names

class Users {
  final int user_id;
  final String name;
  final String email;
  final String password_hash;
  final int role_id;

  Users({
    required this.user_id,
    required this.name,
    required this.email,
    required this.password_hash,
    required this.role_id,
  });

  Users copy({
    int? user_id,
    String? name,
    String? email,
    String? password_hash,
    int? role_id,
  }) =>
      Users(
        user_id: user_id ?? this.user_id,
        name: name ?? this.name,
        email: email ?? this.email,
        password_hash: password_hash ?? this.password_hash,
        role_id: role_id ?? this.role_id,
      );

  static Users fromJson(Map<String, Object?> json) => Users(
        user_id: json['user_id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        password_hash: json['password_hash'] as String,
        role_id: json['role_id'] as int,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'user_id': user_id,
        'name': name,
        'email': email,
        'password_hash': password_hash,
        'role_id': role_id,
      };
}
