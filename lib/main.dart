import 'package:flutter/material.dart';
import 'package:travel_app/screens/bottombar.dart';
import 'package:travel_app/utils/appstyles.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const Bottombar(), 
    );
  }
}
