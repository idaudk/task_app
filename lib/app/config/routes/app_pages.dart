import 'package:get/get.dart';
import 'package:task_app/app/features/dashboard/binding/dashboard_binding.dart';
import 'package:task_app/app/features/dashboard/view/screen/dashboard_screen.dart';
import 'package:task_app/app/features/socket/binding/socket_binding.dart';
import 'package:task_app/app/features/socket/view/screen/socket_screen.dart';
import 'package:task_app/app/features/upload_docs/binding/docs_binding.dart';
import 'package:task_app/app/features/upload_docs/view/screen/docs_screen.dart';
import 'package:task_app/app/features/view_docs/view/screen/view_docs_screen.dart';

import '../../features/login/binding/login_binding.dart';
import '../../features/login/view/screens/login_screen.dart';
import '../../features/view_docs/binding/view_docs_binding.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.uploadDocs,
      page: () => DocsScreen(),
      binding: DocsBinding(),
    ),
    GetPage(
      name: _Paths.viewDocs,
      page: () => ViewDocsScreen(),
      binding: ViewDocsBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.socket,
      page: () => SocketScreen(),
      binding: SocketBindig(),
    ),
  ];
}
