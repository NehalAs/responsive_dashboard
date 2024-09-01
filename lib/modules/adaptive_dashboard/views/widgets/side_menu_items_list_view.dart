import 'package:flutter/material.dart';
import 'package:responsive/generated/assets.dart';
import 'package:responsive/modules/adaptive_dashboard/models/side_menu_item_model.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/side_menu_item.dart';

class SideMenuItemsListView extends StatefulWidget {
  const SideMenuItemsListView({super.key});

  static List<SideMenuItemModel> itemsList = [
    SideMenuItemModel(title: 'Dashboard', icon: Assets.svgsCategory2),
    SideMenuItemModel(title: 'My Transaction', icon: Assets.svgsConvertCard),
    SideMenuItemModel(title: 'Statistics', icon: Assets.svgsGraph),
    SideMenuItemModel(title: 'Wallet Account', icon: Assets.svgsWallet2),
    SideMenuItemModel(title: 'My Investments', icon: Assets.svgsChart2),
  ];

  @override
  State<SideMenuItemsListView> createState() => _SideMenuItemsListViewState();
}

class _SideMenuItemsListViewState extends State<SideMenuItemsListView> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex=index;
            });
          },
          child: SideMenuItem(item: SideMenuItemsListView.itemsList[index],isSelected: selectedIndex==index,)),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: SideMenuItemsListView.itemsList.length,
    );
  }
}
