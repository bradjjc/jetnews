import 'package:flutter/material.dart';
import 'package:flutter_jetnews/model/news_info.dart';


class HomeBodyTop extends StatelessWidget {

  Result news;
  HomeBodyTop(this.news);


  @override
  Widget build(BuildContext context) {


    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          news.publication == null ? CircularProgressIndicator()
              :
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                child: Image.asset("${news.publication.logoUrl}"),
              ),
            ),
          SizedBox(height: 16.0),
          Text(
            '${news.title}',
            style: textTheme.headline6
              .copyWith(color: textTheme.headline6.color.withOpacity(0.87)),
          ),
          Text(
            '${news.title}',
            style: textTheme.bodyText2
                .copyWith(color: textTheme.bodyText2.color.withOpacity(0.87)),
          ),
          Text(
            '${news.title}',
            style: textTheme.bodyText2
                .copyWith(color: textTheme.bodyText2.color.withOpacity(0.06)),
          ),

        ],
      ),
    );
  }
}
