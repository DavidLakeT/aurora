import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Text('Aurora'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Toast!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
