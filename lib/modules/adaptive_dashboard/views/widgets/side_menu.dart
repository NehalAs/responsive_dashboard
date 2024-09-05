import 'package:flutter/material.dart';
import 'package:responsive/generated/assets.dart';
import 'package:responsive/modules/adaptive_dashboard/models/side_menu_item_model.dart';
import 'package:responsive/modules/adaptive_dashboard/models/user_Info_model.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/side_menu_item.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/side_menu_items_list_view.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/user_info_item.dart';
import 'package:responsive/utils/app_ui.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppUI.white,
      child:  Padding(
        padding: const EdgeInsetsDirectional.only(start: 28, end: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 20,),),
             SliverToBoxAdapter(
                child: UserInfoItem(userInfoModel: UserInfoModel(Assets.svgsLekan, 'Lekan Okeowo', 'demo@gmail.com'),)),
            const SliverToBoxAdapter(child: SizedBox(height: 20,),),
            const SideMenuItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  const SizedBox(height: 20,),
                  SideMenuItem(item: SideMenuItemModel(title:'Setting system',icon:Assets.svgsSetting2)),
                  const SizedBox(height: 20,),
                  SideMenuItem(item: SideMenuItemModel(title:'Logout account',icon:Assets.svgsLogout)),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
