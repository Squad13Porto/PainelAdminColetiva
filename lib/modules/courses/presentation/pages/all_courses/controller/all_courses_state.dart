import 'package:painel_admin_coletiva/modules/courses/models/course_model.dart';

abstract class AllCoursesState {}

class AllCoursesStateLoading extends AllCoursesState {}

class AllCoursesStateError extends AllCoursesState {
  final String message;
  AllCoursesStateError({required this.message});
}

class AllCoursesStateSuccess extends AllCoursesState {
  final List<CourseModel> courses;
  AllCoursesStateSuccess({required this.courses});
}
