import 'package:flutter/material.dart';
import 'login_page.dart'; // นำเข้าหน้า LoginPage
//import 'register_page.dart';
//ฉบับแก้ไปเรื่อย ยังไม่ถูก

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(), // เริ่มต้นที่หน้า LoginPage
      debugShowCheckedModeBanner: false, // ปิด Debug Banner
    );
  }
}