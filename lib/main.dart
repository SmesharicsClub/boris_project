import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'my_music',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const MyHomePage(title: 'My_music'),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
      child: const Text("Скажи-ка, дядя, ведь не даром..."),
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
      ),
      body: ListView.separated(
          padding: EdgeInsets.all(1),
          itemCount: containers.length,
          itemBuilder: (_, index) => containers[index],
          separatorBuilder: (_, index) => const SizedBox(height: 5)));
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.asset(MusicAssets.buttonPath);
}

class MusicAssets {
  static const String buttonPath = "assets/images/image.png";
}
