import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/text_with_text_field.dart';

import '../../../utils/app_ui.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitledTextField(title: 'Customer name', hintText: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TitledTextField(title: 'Customer Email', hintText: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitledTextField(title: 'Item name', hintText: 'Type Item name')),
            SizedBox(width: 16,),
            Expanded(child: TitledTextField(title: 'Item mount', hintText: 'USD')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomButton(text: 'Add more details',)),
            SizedBox(width: 24,),
            Expanded(child: CustomButton(text: 'Send Money',textColor: Colors.white,buttonColor: AppUI.blueF2,))
          ],
        )
      ],
    );
  }
}
