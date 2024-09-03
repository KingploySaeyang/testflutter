import 'dart:convert'; // นำเข้าฟังก์ชัน jsonEncode
//import 'package:flutterr/models/user_model.dart';
import 'package:flutterr/varaible.dart';
import 'package:http/http.dart' as http;

class User {
  final String username;
  final String role; // role ของผู้ใช้

  User({required this.username, required this.role});
}

class AuthService {
  Future<User> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse("$apiURL/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          {
            "username": username,
            "password": password,
          },
        ),
      );

      print(response.statusCode);
      print(response.body);

      // ตรวจสอบสถานะการตอบกลับ
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // ตรวจสอบข้อมูลที่ตอบกลับ
        if (data.containsKey('username') && data.containsKey('role')) {
          return User(username: data['username'], role: data['role']);
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to login: ${response.reasonPhrase}');
      }
    } catch (e) {
      // จัดการข้อผิดพลาดที่เกิดขึ้น
      throw Exception('Failed to login: $e');
    }
  }


// Register method
  Future<void> register(
      String username, String password, String name, String role) async {
    final response = await http.post(
      Uri.parse("$apiURL/api/auth/register"),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
        'name': name,
        'role': role,
      }),
    );

    print(response.statusCode);
    print(response.body);
  }
}
