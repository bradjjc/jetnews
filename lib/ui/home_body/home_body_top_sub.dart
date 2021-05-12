import 'package:flutter/material.dart';
import 'package:flutter_jetnews/model/news_info.dart';

class HomeBodyTopSub extends StatelessWidget {
  Result news;
  HomeBodyTopSub(this.news);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          "${news.publication.logoUrl}"),
      title: Text('${news.title}'),
      subtitle: Text('${news.metadata.date} - ${news.metadata.readTimeMinutes} min read'),
      trailing: IconButton(
        icon: Icon(Icons.chat_rounded),
        onPressed: () {},
      ),
    );
  }
}
