import 'package:flutter/material.dart';
import 'app/constants.dart';
import 'app/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: Constants.title,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: const MyHomePage(title: 'My_music'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final containers = [
    Container(height: 50, color: Colors.red),
    Container(
      height: 30,
      color: Colors.white,
      child: const Text (Constants.containerText),
    ),
    Container(height: 50, color: Colors.red),
    Container(
      color: Colors.white,
      child: const ImageWidget(),
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Constants.backgroundColor,
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(1),
          itemCount: containers.length,
          itemBuilder: (_, index) => containers[index],
          separatorBuilder: (_, index) => const SizedBox(height: 5)));
}
