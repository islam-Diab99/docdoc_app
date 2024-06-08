
import 'core/di/dependancy_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}