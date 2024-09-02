import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/quick_invoice_section.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/side_menu.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 1,
            child: SideMenu()),
        const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  AllExpenses(),
                  SizedBox(height: 24,),
                  QuickInvoiceSection(),
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Container()
              ],
            )),
      ],
    );
  }
}
