import 'package:flutter/material.dart';
import 'package:responsive/utils/styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',style: Styles.textStyle20w600(),),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly',style: Styles.textStyle16w500(),),
             const SizedBox(width: 18,),
              Transform.rotate(
                  angle: 1.57079633,
                  child: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),
        )
      ],
    );
  }
}
