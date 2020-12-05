import 'package:flutter/material.dart';

class RequestResponseTab extends StatelessWidget {
  final String title;
  const RequestResponseTab({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Tab(
        child: Text(
          this.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
