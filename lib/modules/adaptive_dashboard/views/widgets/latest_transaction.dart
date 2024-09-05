import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/user_info_item.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Latest Transaction',
          style: Styles.textStyle16w500(context),
        ),
        const SizedBox(
          height: 12,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
