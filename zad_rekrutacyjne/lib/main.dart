import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zad_rekrutacyjne/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zadanie"),
      ),
      body: Column(
        children: [
          Center(
            child: TextField(
              decoration: InputDecoration(labelText: "Podaj liczby"),
              keyboardType: TextInputType.number,
              controller: _controller,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List numbers =
                    _controller.text.split(',').map(int.parse).toList();

                int oddNumber = findDiffNumber(numbers);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Result(oddNumber)),
                );
              },
              child: Text('Znajdź liczbe'))
        ],
      ),
    );
  }

  int findDiffNumber(List numbers) {
    if (numbers.length > 2) {
      List evenNumber = [];
      List oddNumber = [];
      for (var x in numbers) {
        if (x % 2 == 0) {
          evenNumber.add(x);
        } else {
          oddNumber.add(x);
        }
      }

      if (evenNumber.length == 1) {
        return evenNumber[0];
      }
      return oddNumber[0];
    }
    return 0;
  }
}
