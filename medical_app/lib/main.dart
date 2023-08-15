import 'package:flutter/material.dart';
import 'package:medical_app/pages/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        home: const HomePage()),
  );
}
