import 'package:flutter/material.dart';
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
          Text(
            'Latest Transaction',
            style: Styles.textStyle16w500(context),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
              height: 72,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const UserInfoItem(
                      icon: Assets.svgsLekan,
                      title: 'Madrani Andi',
                      subTitle: 'Madraniadi20@gmail'),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 12,
                      ),
                  itemCount: 5)),
        ],
      ),
    );
  }
}
