import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:painel_admin_coletiva/app/app_routes.dart';
import 'package:painel_admin_coletiva/modules/authentication/presentation/pages/login/login_page.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/all_courses_page.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_controller.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final injector = GetIt.instance;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Painel Admin Coletiva',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.courses,
      routes: {
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.courses: (context) =>
            AllCoursesPage(controller: injector.get<AllCoursesController>()),
      },
    );
  }
}
