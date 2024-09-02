import 'package:flutter/material.dart';
import 'package:responsive/shared/widgets/custom_svg_widget.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle});

  final String icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppUI.whiteFA,
      elevation: 0,
      child: ListTile(
          leading: CustomSvg(icon: icon),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              title,
              style: Styles.textStyle16w600(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              subTitle,
              style: Styles.textStyle12w400(context),
            ),
          )),
    );
  }
}
