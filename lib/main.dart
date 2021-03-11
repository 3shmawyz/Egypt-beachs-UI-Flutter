import 'package:flutter/material.dart';
import 'package:sea_lovers_flutter_ui_only/detailsscreen.dart';
import 'package:sea_lovers_flutter_ui_only/discoverscreen.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        DiscoverScreen.id: (context) => DiscoverScreen(),
        DetailsScreen.id: (context) => DetailsScreen(),
      },
    );
  }
}
