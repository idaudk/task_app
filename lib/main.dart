import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/config/routes/app_pages.dart';
import 'app/config/theme/app_basic_theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await initServices();
  runApp(MyApp());
}

// Future<void> initServices() async {
//   await Get.putAsync<ApiBackendService>(() async => ApiBackendService());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.initial,
        theme: AppBasicTheme.getThemeData(),
        getPages: AppPages.routes,
      ),
    );
  }
}