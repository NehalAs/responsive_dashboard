import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/adaptive_dashboard_view.dart';
import 'package:responsive/modules/home/views/home_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdaptiveDashboardView(),
    );
  }
}
