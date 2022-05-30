import 'package:flutter/material.dart';

const Color _appBarBackgroundColor = Color(0xFF121212);
const String _imagefoto = r'http://risovach.ru/upload/2017/12/mem/gey-flag_164992799_orig_.jpg';

class ProfilePage extends StatelessWidget {
  const ProfilePage ({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
  backgroundColor: Colors.grey[900],
  appBar: AppBar(
  title: const Text('my_music'),
  centerTitle: true,
  backgroundColor: const Color(0xFF121212),
  ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(_imagefoto),
      ));
}

