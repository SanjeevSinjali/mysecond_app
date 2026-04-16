import 'package:flutter/material.dart';

// class SiView extends StatelessWidget {
//   const SiView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
class InterestView extends StatefulWidget {
  const InterestView({super.key});

  @override
  State<InterestView> createState() => _InterestViewState();
}

class _InterestViewState extends State<InterestView> {
  final pController = TextEditingController();
  final rController = TextEditingController();
  final tController = TextEditingController();

  double result = 0;

  void calculate() {
    double p = double.parse(pController.text);
    double r = double.parse(rController.text);
    double t = double.parse(tController.text);

    setState(() {
      result = (p * r * t) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Interest")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: pController,
              decoration: const InputDecoration(
                labelText: "Principal",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            TextField(
              controller: rController,
              decoration: const InputDecoration(
                labelText: "Rate",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            TextField(
              controller: tController,
              decoration: const InputDecoration(
                labelText: "Time",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: calculate,
                child: const Text("Calculate"),
              ),
            ),

            SizedBox(height: 8),
            Text("Result : $result"),
          ],
        ),
      ),
    );
  }
}