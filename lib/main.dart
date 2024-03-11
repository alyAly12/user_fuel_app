import 'package:driver_app/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Driver App',
        theme:  ThemeData.light(useMaterial3: false).copyWith(
          iconTheme: const IconThemeData(
              color: AppColors.appBarColor, size: 0),
          textTheme:
          GoogleFonts.robotoTextTheme(ThemeData
              .light()
              .textTheme),
        ),
        routerConfig: AppRoute.router,
      ),
    );
  }
}
