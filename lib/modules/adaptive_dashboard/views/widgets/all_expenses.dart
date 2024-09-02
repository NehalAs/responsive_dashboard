import 'package:flutter/material.dart';
import 'package:responsive/generated/assets.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/expenses_item.dart';
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
          AllExpensesHeader(),
          SizedBox(height: 16,),
          Row(
            children: [
              Expanded(child: ExpensesItem(icon:Assets.svgsMoneys,title: 'Balance',date: 'April 2022',price: r'$20,129',blueCard: true,)),
              SizedBox(width: 12,),
              Expanded(child: ExpensesItem(icon:Assets.svgsCardReceive,title: 'Income',date: 'April 2022',price: r'$20,129',)),
              SizedBox(width: 12,),
              Expanded(child: ExpensesItem(icon:Assets.svgsCardSend,title: 'Expenses',date: 'April 2022',price: r'$20,129',)),
            ],
          ),
        ],
      ),
    );
  }
}
