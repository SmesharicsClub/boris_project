import 'package:flutter/material.dart';
import 'profile_page/screens/profile_page.dart';

const String title = 'my_music';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const ProfilePage(title: title),
      );
}
