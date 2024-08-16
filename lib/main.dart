import 'package:flutter/material.dart';
import 'package:admingui/screens/login.dart';
import 'package:admingui/screens/Adminpage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // Set the initial route to LoginPage
        '/AdmHome': (context) => const AdminPageWidget(),
      },
    ),
  );
}
