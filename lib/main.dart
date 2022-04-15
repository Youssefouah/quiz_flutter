import 'package:flutter/material.dart';
import 'package:quiz/ui/quiz_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        // backgroundColor: Colors.yellow,
        brightness: Brightness.dark,
      ),
      home: const QuizScreenPage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 31, 56),
      appBar: AppBar(
        title: const Center(child: Text("Quiz Math")),
        backgroundColor: const Color.fromARGB(255, 35, 100, 153),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(10.0),
        child: Root(),
      ),
    );
  }
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Widget_border(context, Text),
        ),
        Expanded(
          flex: 10,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 255, 255, 255),
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color.fromARGB(255, 73, 110, 139),
            ),
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("images/images.jpeg")),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 255, 255, 255),
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color.fromARGB(255, 73, 110, 139),
            ),
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("images/images.jpeg")),
          ),
        ),
      ],
    );
  }
}

Widget Widget_border(BuildContext context, dynamic package) {
  return Container(
      width: double.infinity,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 255, 255, 255),
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(255, 73, 110, 139),
      ),
      child: package);
}
