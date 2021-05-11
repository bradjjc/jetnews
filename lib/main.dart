import 'package:flutter/material.dart';
import 'package:flutter_jetnews/repository/news_repository.dart';
import 'package:flutter_jetnews/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider<NewsRepositore>(create: (_) => NewsRepositore()),
          ],
          child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(backgroundColor: Color(0XFFCF233D))),
      home: Home(),
    );
  }
}
