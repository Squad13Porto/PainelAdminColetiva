import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/app/app_dependencies.dart';
import 'package:painel_admin_coletiva/app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppDependencies.registerDependencies();
  runApp(const AppWidget());
}
