import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rss_reader/pages/home.dart';
import 'package:rss_reader/pages/search.dart';
import 'package:rss_reader/pages/view_about.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => SearchPage(),
    '/home': (context) => HomePage(),
    '/about': (context) => AboutPage(),
  }));
}
