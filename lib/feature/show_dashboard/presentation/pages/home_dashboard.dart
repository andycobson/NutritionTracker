import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Text("Total Calories:"),
          Text("Total Protein:"),
          Text("Total Fat:"),
          Text("Total Carbs:"),
        ],
      ),
    );
  }
}
