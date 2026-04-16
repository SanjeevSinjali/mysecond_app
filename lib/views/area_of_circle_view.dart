import 'package:flutter/material.dart';

// class AreaOfCircleView extends StatelessWidget {
//   const AreaOfCircleView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  final radiusController = TextEditingController();
  double result = 0;

  void calculate() {
    double r = double.parse(radiusController.text);

    setState(() {
      result = 3.14 * r * r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(
                labelText: "Enter radius",
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