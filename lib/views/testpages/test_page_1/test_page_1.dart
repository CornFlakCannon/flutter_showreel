import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  const TestPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
