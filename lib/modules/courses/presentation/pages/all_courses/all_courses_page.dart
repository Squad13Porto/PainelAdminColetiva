import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_controller.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_state.dart';

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
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ValueListenableBuilder(
        valueListenable: widget.controller.state,
        builder: (context, state, _) {
          if (state is AllCoursesStateLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is AllCoursesStateSuccess) {
            return ListView.builder(
              itemCount: state.courses.length,
              itemBuilder: (context, index) {
                final course = state.courses[index];
                return ListTile(
                  title: Text(course.nome),
                );
              },
            );
          }

          final errorState = state as AllCoursesStateError;
          return Center(child: Text(errorState.message));
        },
      ),
    );
  }
}
