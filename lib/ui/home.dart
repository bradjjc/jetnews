


import 'package:flutter/material.dart';
import 'package:flutter_jetnews/repository/news_repository.dart';
import 'package:flutter_jetnews/ui/home_body_top/homeBodyTop.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<NewsRepositore>().fetchData().then((NewsInfo) {
      setState(() {
        for (int i = 0; i < NewsInfo.result.length; i++) {
          context.read<NewsRepositore>().news.add(NewsInfo.result[i]);
        }
        print(context.read<NewsRepositore>().news[0]);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jetnews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Top stories for you'),
            HomeBodyTop(context.read<NewsRepositore>().news[2]),

          ],
        ),
      ),
    );
  }
}
