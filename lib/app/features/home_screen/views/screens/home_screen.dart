import 'package:aurora/app/widgets/home_app_bar.dart';
import 'package:aurora/app/widgets/news_splash.dart';
import 'package:aurora/app/widgets/side_menu_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<NewsSplash> news = [
    NewsSplash(
      photoUrl: 'https://logowik.com/content/uploads/images/679_bbc.jpg',
      name: 'BBC',
      text: 'Contenido del mensaje',
      date: '23 Julio',
    ),
    NewsSplash(
      photoUrl: 'https://theme.zdassets.com/theme_assets/968999/d8a347b41db1ddee634e2d67d08798c102ef09ac.jpg',
      name: 'New York Times',
      text: 'Contenido del mensaje',
      date: '17 Mayo',
    ),
    NewsSplash(
      photoUrl: 'https://play-lh.googleusercontent.com/fTyAbWr1i3kiZHquKN2gPAapnRhAIEYfCaOXvs-IMFulvH_sWat_be6zfeMeYaLjQPc',
      name: 'DW News',
      text: 'Contenido del mensaje',
      date: '14 Mayo',
    ),
    NewsSplash(
      photoUrl: 'https://cdn.freebiesupply.com/logos/large/2x/cnn-international-logo-png-transparent.png',
      name: 'CNN',
      text: 'Contenido del mensaje',
      date: '15 Mayo',
    ),
    NewsSplash(
        photoUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/03/Logo-rcn-2019.jpg',
        name: 'RCN',
        text: 'Contenido del mensaje',
        date: '12 Abril',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      drawer: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 320,
          maxWidth: 320,
        ),
        child: Drawer(
          child: SideMenuList(),
        ),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return NewsSplash(
            photoUrl: item.photoUrl,
            name: item.name,
            text: item.text,
            date: item.date,
          );
        },
      ),
    );
  }
}
