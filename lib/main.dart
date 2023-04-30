import 'package:flutter/material.dart';
import 'package:membuat_form_login_validasi/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Validasi Form Login",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: LoginView() ,
    );
  }
}
