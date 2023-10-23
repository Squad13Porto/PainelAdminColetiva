import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_controller.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_state.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/widgets/course_card/course_card_widget.dart';

class AllCoursesPage extends StatefulWidget {
  final AllCoursesController controller;

  const AllCoursesPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<AllCoursesPage> createState() => _AllCoursesPageState();
}

class _AllCoursesPageState extends State<AllCoursesPage> {
  @override
  void initState() {
    super.initState();
    widget.controller.getAllCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: widget.controller.state,
        builder: (context, state, _) {
          if (state is AllCoursesStateLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is AllCoursesStateSuccess) {
            return Padding(
              padding: const EdgeInsets.all(48.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                runSpacing: 15.0,
                spacing: 15.0,
                children: List.generate(
                  state.courses.length,
                  (index) {
                    final course = state.courses[index];
                    return CourseCardWidget(course: course);
                  },
                ),
              ),
            );
          }

          final errorState = state as AllCoursesStateError;
          return Center(child: Text(errorState.message));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
