// import 'package:flutter/material.dart';
// import 'package:managment/Screens/SplashScreen.dart';
// import 'package:managment/Screens/home.dart';
// import 'package:managment/Screens/statistics.dart';
// import 'package:managment/widgets/bottomnavigationbar.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'Screens/home.dart';
// import 'data/model/add_date.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Screens/SplashScreen.dart';
import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
