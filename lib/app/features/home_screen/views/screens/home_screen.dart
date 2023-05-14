import 'package:aurora/app/widgets/custom_app_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
            appBar: CustomAppBar(),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              MemoryImage(snapshot.data!.buffer.asUint8List()),
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
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400]),
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
                    leading: Icon(EvaIcons.personOutline),
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
                    leading: Icon(EvaIcons.phoneOutline),
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
                ],
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

Future<ByteData> loadAsset(String imagePath) async {
  try {
    final ByteData byteData = await rootBundle.load(imagePath);
    return byteData;
  } catch (error) {
    print('Error loading image: $error');
    rethrow;
  }
}
