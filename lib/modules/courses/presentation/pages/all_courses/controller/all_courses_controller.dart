import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_state.dart';
import 'package:painel_admin_coletiva/modules/courses/service/courses_service.dart';

class AllCoursesController {
  final CoursesService coursesService;

  AllCoursesController({
    required this.coursesService,
  });

  final ValueNotifier<AllCoursesState> state =
      ValueNotifier(AllCoursesStateLoading());

  Future<void> getAllCourses() async {
    try {
      final result = await coursesService.getAllCourses();
      state.value = AllCoursesStateSuccess(courses: result);
    } catch (e) {
      state.value = AllCoursesStateError(message: "error");
    }
  }
}
