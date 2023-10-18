import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:painel_admin_coletiva/modules/courses/models/course_model.dart';

class CoursesService {
  final FirebaseFirestore firebaseFirestore;
  CoursesService({required this.firebaseFirestore});

  Future<List<CourseModel>> getAllCourses() async {
    try {
      List<CourseModel> courses = [];

      final response = await firebaseFirestore
          .collection("courses")
          .doc("e42FnWxZdOK244QNRY0c")
          .get();

      final data = response.data();

      if (data != null) {
        for (var course in data["itens"]) {
          courses.add(CourseModel.fromMap(course));
        }
      } else {
        throw Exception();
      }

      return courses;
    } catch (e) {
      throw Exception();
    }
  }

  Future<bool> createCourse() async {
    return true;
  }

  Future<bool> editCourse() async {
    return true;
  }

  Future<bool> deleteCourse() async {
    return true;
  }
}
