import 'dart:ui';

import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github-gist.dart';

import '../json_text_input_formatter.dart';

class RequestEditor extends StatelessWidget {
  String hintText;
  bool readOnly;
  HighlightEditingController controller;
  JsonTextInputFormatter jsonFormatter;

  RequestEditor({Key key, this.readOnly, this.hintText}) : super(key: key) {
    this.controller = HighlightEditingController("json", githubGistTheme);
    this.jsonFormatter = JsonTextInputFormatter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      color: AppColor.lightGrey,
      child: Scrollbar(
        child: TextField(
          controller: controller,
          readOnly: this.readOnly,
          style: TextStyle(fontFamily: "RobotoMono", fontSize: 14),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            fillColor: Colors.white,
            hoverColor: Colors.white,
            isCollapsed: true,
            contentPadding: EdgeInsets.fromLTRB(4, 8, 4, 4),
            border: InputBorder.none,
            hintText: this.hintText,
            filled: true,
          ),
          expands: true,
          textInputAction: TextInputAction.newline,
          maxLines: null,
          minLines: null,
        ),
      ),
    );
  }
}
