import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/models/user_Info_model.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/user_info_item.dart';

import '../../../../generated/assets.dart';

class LatestTransactionListView extends StatelessWidget {
  LatestTransactionListView({super.key});

 final List<UserInfoModel> users=[
  UserInfoModel(Assets.svgsMadrani, 'Madrani Andi', 'Madraniadi20@gmail'),
  UserInfoModel(Assets.svgsJosua,   'Josua Nunito', 'Josh Nunito@gmail.com'),
  UserInfoModel(Assets.svgsMadrani, 'Madrani Andi', 'Madraniadi20@gmail'),
  UserInfoModel(Assets.svgsJosua,   'Josua Nunito', 'Josh Nunito@gmail.com'),

];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 72,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  IntrinsicWidth(child: UserInfoItem(userInfoModel: users[index],),),
            separatorBuilder: (context, index) => const SizedBox(width: 12,),
            itemCount: users.length));
  }
}
