import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/models/side_menu_item_model.dart';
import 'package:responsive/shared/widgets/custom_svg_widget.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/styles.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.item,this.isSelected=false});

  final SideMenuItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomSvg(icon: item.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          item.title,
          style: Styles.textStyle16w400(context).copyWith(color:isSelected?AppUI.blueF2:null),
        ),
      ),
      trailing: isSelected?Container(
        width: 3.27,
        decoration: const BoxDecoration(color: AppUI.blueF2),
      ):null,
    );
  }
}
