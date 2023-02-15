import 'package:flutter/material.dart';
import 'package:rss_reader/services/parser_xml.dart';
import 'package:rss_reader/services/news_model.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void getNews(String url) async {
    ParserXML parser = ParserXML(url: url);
    List<NewsModel> news = await parser.getObjects();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'news': news,
    });
  }

  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RSS-reader"),
      ),
      body: SafeArea(
        child: TextField(
          decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
          controller: urlController,
          keyboardType: TextInputType.url,
          onSubmitted: (value) {
            getNews(value);
          },
        ),
      ),
    );
  }
}
