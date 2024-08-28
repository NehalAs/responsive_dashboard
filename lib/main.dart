import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/adaptive_dashboard_view.dart';
import 'package:responsive/modules/home/views/home_screen.dart';
import 'package:responsive/utils/app_ui.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppUI.whiteFA,
      ),
      home: const AdaptiveDashboardView(),
    );
  }
}
