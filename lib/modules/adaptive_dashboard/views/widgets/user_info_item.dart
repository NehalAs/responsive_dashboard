import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/models/user_Info_model.dart';
import 'package:responsive/shared/widgets/custom_svg_widget.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem(
      {super.key,
        required this.userInfoModel
      });

  final UserInfoModel userInfoModel;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppUI.whiteFA,
      elevation: 0,
      child: ListTile(
          leading: CustomSvg(icon: userInfoModel.icon),
          title: Text(
            userInfoModel.title,
            style: Styles.textStyle16w600(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: Styles.textStyle12w400(context),
          )),
    );
  }
}
