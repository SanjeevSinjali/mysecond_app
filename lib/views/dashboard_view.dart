import 'package:flutter/material.dart';
import 'package:mysecond_app/views/area_of_circle_view.dart';
import 'package:mysecond_app/views/arithmetic_view.dart';
import 'package:mysecond_app/views/si_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ArithemticView()),
                  );
                },
                child: const Text("Arithmetic"),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CircleView()),
                  );
                },
                child: const Text("Area of Circle"),
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const InterestView()),
                  );
                },
                child: const Text("Simple Interest"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}