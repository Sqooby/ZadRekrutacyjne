import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int diffNumber;

  const Result(this.diffNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WYnik"),
      ),
      body: Center(
        child: Text(
          ' liczba: $diffNumber',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
