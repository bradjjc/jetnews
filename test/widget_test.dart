// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_jetnews/model/news_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



void main() {


      test('http 통신 테스트', () async {

        var uri = Uri.parse(
            'https://github.com/junsuk5/mock_json/blob/main/jetnews/posts.json');
        var response = await http.get(uri);
        expect(response.statusCode, 200);

        // NewsInfo newsInfo = NewsInfo.fromJson(jsonDecode(json.encode(response.body)));
        Future<List<NewsInfo>> news = json.decode(response.body).map((el) => NewsInfo.fromJson(el)).toList();

        // expect(, "dc523f0ed25c");
      });

    }



