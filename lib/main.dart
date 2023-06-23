import 'package:flutter/material.dart';
import 'package:food_tracker/core/services_locator.dart';
import 'package:food_tracker/feature/show_dashboard/presentation/pages/home_dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

  setUpServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeDashboard(),
    );
  }
}
