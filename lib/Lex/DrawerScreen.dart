import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children:  [
            UserAccountsDrawerHeader(
              
              accountName: const Text("Shahid Ali"),
              accountEmail: const Text("ShahidAlileghari2021@gmail.com"),
              currentAccountPicture: ClipOval(
                  child: Image.asset("assets/shahid.jpg",fit: BoxFit.cover,)
              ),
            ),
            const ListTile(
              trailing: Icon(Icons.share,size: 30,),
              title: Text("Share",style: TextStyle(color: Colors.blue,fontSize: 20),),
            ),
            const ListTile(
              trailing: Icon(Icons.login_outlined,size: 30,),
              title: Text("Logout",style: TextStyle(color: Colors.blue,fontSize: 20),),
            ),
            const ListTile(
              trailing: Icon(Icons.star_rate,size: 30,),
              title: Text("rate us",style: TextStyle(color: Colors.blue,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
