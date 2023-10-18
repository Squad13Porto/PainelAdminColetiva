import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:painel_admin_coletiva/modules/courses/presentation/pages/all_courses/controller/all_courses_controller.dart';
import 'package:painel_admin_coletiva/modules/courses/service/courses_service.dart';

class AppDependencies {
  final injector = GetIt.I;

  void registerDependencies() {
    // Services
    injector.registerLazySingleton(
      () => CoursesService(firebaseFirestore: FirebaseFirestore.instance),
    );

    // Controllers
    injector.registerLazySingleton<AllCoursesController>(
      () => AllCoursesController(
        coursesService: injector.get<CoursesService>(),
      ),
    );
  }
}
