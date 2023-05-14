import 'package:aurora/app/widgets/home_app_bar.dart';
import 'package:aurora/app/widgets/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ByteData>(
      future: loadAsset('assets/images/Wallpaper.jpg'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: HomeAppBar(),
            drawer: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 320,
                maxWidth: 320,
              ),
              child: Drawer(
                child: SideMenuList(snapshot.data)
              ),
            ),
            body: Center(
              child: Text(
                'Welcome to the Home Screen!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Error loading image'),
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}