import 'package:flutter/material.dart';
import 'package:responsive/generated/assets.dart';
import 'package:responsive/shared/widgets/custom_svg_widget.dart';
import 'package:responsive/utils/styles.dart';

import '../../../../utils/app_ui.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key,
      this.blueCard = false,
      required this.icon,
      required this.title,
      required this.date,
      required this.price});

  final bool blueCard;
  final String icon;
  final String title;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: blueCard ? AppUI.blueF2 : AppUI.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppUI.whiteF1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: blueCard ? AppUI.white.withOpacity(0.1) : AppUI.whiteFA,
                child: CustomSvg(icon: icon,),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios_rounded, color: blueCard ? AppUI.white : AppUI.blue61,)
            ],
          ),
          const SizedBox(height: 34,),
          Text(title, style: Styles.textStyle16w600(context).copyWith(color: blueCard ? AppUI.white : null),),
          const SizedBox(height: 8,),
          Text(date, style: Styles.textStyle14w400(context).copyWith(color: blueCard ? AppUI.white : null),),
          const SizedBox(height: 16,),
          Text(price, style: Styles.textStyle24w600(context).copyWith(color: blueCard ? AppUI.white : null),
          )
        ],
      ),
    );
  }
}
