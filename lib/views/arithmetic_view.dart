import 'package:flutter/material.dart';
// 1. stateless
// 2. stateful

// Singlechild: child
// multichlid:  children:[]
class ArithemticView extends StatefulWidget {
  const ArithemticView({super.key});

  @override
  State<ArithemticView> createState() => _ArithemticViewState();
}

class _ArithemticViewState extends State<ArithemticView> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Arithmetic View")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter second no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //Simple state management OR Page lai refresh gara
                  setState(() {
                    result = first + second;
                  });
                }, child: Text("Add")),
            ),
            SizedBox(height: 8),

            Text("Result : $result", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
