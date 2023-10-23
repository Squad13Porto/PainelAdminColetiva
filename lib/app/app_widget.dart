import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/app/app_routes.dart';
import 'package:painel_admin_coletiva/app/app_theme.dart';
import 'package:painel_admin_coletiva/common/pages/home/home_page.dart';
import 'package:painel_admin_coletiva/modules/authentication/presentation/pages/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Painel Admin Coletiva',
      theme: AppTheme().appThemeLight,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.home: (context) => HomePage(),
      },
    );
  }
}
