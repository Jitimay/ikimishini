import 'package:flutter/material.dart';
import 'package:ikimashini/core/theme/theme.dart';
import 'package:ikimashini/features/presentation/pages/home_page.dart';
import 'package:ikimashini/features/presentation/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home:  HomePage(),
    );
  }
}
