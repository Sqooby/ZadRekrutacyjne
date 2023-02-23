import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class Result extends StatelessWidget {
  final int diffNumber;

  const Result(this.diffNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).result),
      ),
      body: Center(
        child: Text(
          S.of(context).number + ' $diffNumber',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
