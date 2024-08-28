import 'package:flutter/material.dart';
import 'package:responsive/utils/styles.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('Lekan Okeowo',style: Styles.textStyle16w600(),),
    );
  }
}
