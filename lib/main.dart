import 'package:flutter/material.dart';

void main() {
  runApp(const Salam());
}

class Salam extends StatelessWidget {
  const Salam({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return HomeUi();
  }
}

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int countNumer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text("Counting Number: $countNumer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countNumer = countNumer + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
