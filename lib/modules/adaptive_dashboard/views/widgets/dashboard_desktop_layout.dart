import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/side_menu.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                AllExpenses(),
              ],
            )),
      ],
    );
  }
}
