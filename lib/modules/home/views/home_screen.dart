import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/drawer_item.dart';
import 'package:responsive/modules/home/views/widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey= GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width<900?const DrawerItem():null,
      appBar: MediaQuery.sizeOf(context).width<900?AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu,color: Colors.white,)),
      ):null,
      backgroundColor: Colors.grey[200],
      body:const HomeViewBody(),
    );
  }
}
