import 'package:flutter/material.dart';
// 1. stateless
// 2. stateful

// Singlechild: child
// multichlid:  children:[]
class ArithemticView extends StatelessWidget {
  const ArithemticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: const Text("Arithmetic View")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter first no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter second no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("Add")),
            ),
            SizedBox(height: 8),

            Text("Result : 0"),
          ],
        ),
      ),
    );
  }
}
