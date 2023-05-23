import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_form_discover/src/mobile/pages/login_form_page.dart';
import 'package:login_form_discover/src/web/pages/login_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  bool isRunningOnWeb() {
    return kIsWeb;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form Discover',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isRunningOnWeb() ? LoginPageWeb() : LoginFormPage(),
    );
  }
}
