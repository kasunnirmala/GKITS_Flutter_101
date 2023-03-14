import 'package:flutter_getx/pages/home_screen/home_screen_controller.dart';
import 'package:flutter_getx/pages/home_screen/home_screen_view.dart';
import 'package:flutter_getx/pages/link_page.dart';
import 'package:flutter_getx/pages/login_screen.dart';
import 'package:get/get.dart';

class RouterClass {
  static String login = "/login";
  static String home = "/home";
  static String link = "/link";

  static List<GetPage> routes = [
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder.put(() => HomeScreenController()),
    ),
    GetPage(name: link, page: () => LinkPage()),
  ];
}
