import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int diffNumber;

  Result(this.diffNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drugi fragment"),
      ),
      body: Center(
        child: Text(
          ' liczba: ${diffNumber ?? "brak"}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
