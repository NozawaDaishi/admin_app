import 'package:flutter/material.dart';

import 'side_bar.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //サイドバーの呼び出しを行っている
      home: SideBarNavigation(),
    );
  }
}