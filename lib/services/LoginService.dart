import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl =
      "https://deploybingo-production.up.railway.app/api/auth";

  Future<Map<String, dynamic>?> login(String email, String password) async {
    final Uri url = Uri.parse("$_baseUrl/login");
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final Map<String, dynamic> body = {'email': email, 'password': password};

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Error: ${response.statusCode} - ${response.body}");
        return null;
      }
    } catch (e) {
      print("Exception occurred: $e");
      return null;
    }
  }
}
