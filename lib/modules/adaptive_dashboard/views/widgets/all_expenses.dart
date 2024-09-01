import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive/utils/app_ui.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: AppUI.white,
          borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(20),
      child: const Column(
        children: [
          AllExpensesHeader()
        ],
      ),
    );
  }
}
