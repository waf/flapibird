import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'widgets/sidebar.dart';
import 'widgets/request_url_bar.dart';
import 'widgets/request_response_pane.dart';

void main() {
  // globally make animations faster, by default they seem too slow for a desktop app
  timeDilation = 0.5;

  runApp(FlapibirdApp());
}

class FlapibirdApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flapibird',
      theme: ThemeData.light().copyWith(
        canvasColor: Colors.white,
      ),
      home: RootPage(title: 'flapibird'),
    );
  }
}

class RootPage extends StatefulWidget {
  RootPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sidebar(),
          Expanded(
            child: Column(
              children: [
                RequestUrlBar(),
                RequestResponsePane(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
