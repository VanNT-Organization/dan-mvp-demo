import 'package:flutter/material.dart';
import 'package:mvp/src/di/sign_in_di.dart';
import 'src/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerDI();
  runApp(const MyApp());
}
