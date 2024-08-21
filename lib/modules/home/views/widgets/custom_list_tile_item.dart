import 'package:flutter/material.dart';

class CustomListTileItem extends StatelessWidget {
  const CustomListTileItem({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(icon,color: Colors.black,),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(title,style: const TextStyle(color: Colors.black45),)),
    );
  }
}
