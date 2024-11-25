/**
 * CREATE TABLE "ValidationLogs" (
  "log_id" integer PRIMARY KEY,
  "admin_id" integer NOT NULL,
  "winner_id" integer NOT NULL,
  "action_time" timestamp DEFAULT 'NOW()',
  "action_type" varchar NOT NULL,
  "comments" text
);
 */

class ValidationLogs {
  final int log_id;
  final int admin_id;
  final int winner_id;
  final DateTime action_time;
  final String action_type;
  final String comments;

  ValidationLogs({
    required this.log_id,
    required this.admin_id,
    required this.winner_id,
    required this.action_time,
    required this.action_type,
    required this.comments,
  });

  ValidationLogs copy({
    int? log_id,
    int? admin_id,
    int? winner_id,
    DateTime? action_time,
    String? action_type,
    String? comments,
  }) =>
      ValidationLogs(
        log_id: log_id ?? this.log_id,
        admin_id: admin_id ?? this.admin_id,
        winner_id: winner_id ?? this.winner_id,
        action_time: action_time ?? this.action_time,
        action_type: action_type ?? this.action_type,
        comments: comments ?? this.comments,
      );

  static ValidationLogs fromJson(Map<String, Object?> json) => ValidationLogs(
        log_id: json['log_id'] as int,
        admin_id: json['admin_id'] as int,
        winner_id: json['winner_id'] as int,
        action_time: DateTime.parse(json['action_time'] as String),
        action_type: json['action_type'] as String,
        comments: json['comments'] as String,
      );

  //Esto llama a un objero Json
  Map<String, Object?> toJson() => {
        'log_id': log_id,
        'admin_id': admin_id,
        'winner_id': winner_id,
        'action_time': action_time.toIso8601String(),
        'action_type': action_type,
        'comments': comments,
      };
}