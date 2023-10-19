import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:painel_admin_coletiva/modules/courses/models/course_model.dart';

class CoursesService {
  final FirebaseFirestore firebaseFirestore;
  CoursesService({required this.firebaseFirestore});

  Future<List<CourseModel>> getAllCourses() async {
    try {
      final doc = await firebaseFirestore
          .collection("courses")
          .doc("e42FnWxZdOK244QNRY0c")
          .get();

      final data = doc.data();

      if (data != null) {
        final List<Map<String, dynamic>> itens = data["itens"];
        return itens.map((e) => CourseModel.fromMap(e)).toList();
      } else {
        throw Exception();
      }
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
