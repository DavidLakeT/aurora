import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SideMenuList extends StatelessWidget {
  final ByteData? imageData;

  SideMenuList(this.imageData);

  @override
  Widget build(BuildContext context) {

    if (imageData == null) {
      return CircularProgressIndicator();
    }

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 190,
          width: double.infinity,
          child: DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Wallpaper.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'David',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '+57 (300) 000-00-00',
                    style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(EvaIcons.peopleOutline),
          title: Text('Nuevo grupo'),
          onTap: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Botón de Nuevo Grupo!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person_outline),
          title: Text('Contactos'),
          onTap: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Botón de Contactos!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.call_outlined),
          title: Text('Llamadas'),
          onTap: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Botón de Llamadas!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
        ListTile(
          leading: Icon(EvaIcons.settingsOutline),
          title: Text('Ajustes'),
          onTap: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Botón de Configuración!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
        Divider(
          color: Colors.black,
          thickness: 0.3,
        ),
        ListTile(
          leading: Icon(EvaIcons.questionMarkCircleOutline),
          title: Text('Aprende sobre Aurora'),
          onTap: () {
            Fluttertoast.showToast(
              msg: '¡Esto es un Botón de Info sobre Aurora!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          },
        ),
      ],
    );
  }
}

Future<ByteData> loadAsset(String imagePath) async {
  try {
    final ByteData byteData = await rootBundle.load(imagePath);
    return byteData;
  } catch (error) {
    print('Error loading image: $error');
    rethrow;
  }
}
