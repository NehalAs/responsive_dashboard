import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/quick_invoice_form.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/custom_text_field.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/user_info_item.dart';
import 'package:responsive/utils/app_ui.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/styles.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppUI.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Quick Invoice',
                style: Styles.textStyle20w600(context),
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 24,
                backgroundColor: AppUI.whiteFA,
                child: Icon(
                  Icons.add,
                  color: AppUI.blueF2,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const LatestTransaction(),
          const Divider(height: 48,color: AppUI.whiteF1,),
          const QuickInvoiceForm(),
          const SizedBox(height: 24,),
        ],
      ),
    );
  }
}