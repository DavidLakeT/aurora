import 'package:Aurora/app/features/home_screen/views/screens/home_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {

  static const home = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
      //binding: HomeScreenBinding(),
    ),
  ];
}