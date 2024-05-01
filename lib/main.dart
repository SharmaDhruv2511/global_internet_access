import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_internet_access/dependency_injection.dart';

void main() {
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: TestScreen1(),
    );
  }
}

class TestScreen1 extends StatefulWidget {
  const TestScreen1({Key? key}) : super(key: key);

  @override
  State<TestScreen1> createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          width: 200, // Adjust width as needed
          height: 50, // Adjust height as needed
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Get.to(const TestScreen2());
            },
            child: const Text(
              'Go to TestScreen2',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class TestScreen2 extends StatefulWidget {
  const TestScreen2({Key? key}) : super(key: key);

  @override
  State<TestScreen2> createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          width: 200, // Adjust width as needed
          height: 50, // Adjust height as needed
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Go to TestScreen1',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
