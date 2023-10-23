import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/app/app_dependencies.dart';
import 'package:painel_admin_coletiva/app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAwRZlaqSIgCTvyjfdf7aDaSZJBFiKJNzA",
      appId: "1:47491240685:web:c1af953387f6f51ec432e4",
      messagingSenderId: "47491240685",
      projectId: "squad13-7ae1e",
    ),
  );

  AppDependencies().registerDependencies();
  
  runApp(const AppWidget());
}
