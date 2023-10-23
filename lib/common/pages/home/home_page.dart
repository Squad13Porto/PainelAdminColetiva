import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:painel_admin_coletiva/common/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/all_courses_page.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final content = [
    AllCoursesPage(controller: GetIt.I.get<AllCoursesController>()),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  final pageController = PageController();

  final selectedMenuItem = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: CustomAppBarWidget(
          pageController: pageController,
          selectedMenuItem: selectedMenuItem,
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: content.length,
        itemBuilder: (context, index) {
          return content[index];
        },
      ),
    );
  }
}
