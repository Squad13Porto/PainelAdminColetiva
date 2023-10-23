import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/modules/courses/models/course_model.dart';

class CourseCardWidget extends StatelessWidget {
  final CourseModel course;

  const CourseCardWidget({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      color: Colors.black,
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  Text(
                    course.nome,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    course.descricao,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 32.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
