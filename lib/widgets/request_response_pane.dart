import 'package:flutter/material.dart';

import 'bubble_tab_bar.dart';
import 'issue_request_button.dart';
import 'request_editor.dart';
import 'request_response_tab.dart';

class RequestResponsePane extends StatelessWidget {
  const RequestResponsePane({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BubbleTabBar(
                        tabs: [
                          RequestResponseTab(title: "Request Body"),
                          RequestResponseTab(title: "Headers"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            RequestEditor(
                              readOnly: false,
                              hintText: "request body...",
                            ),
                            Text("TODO: Headers")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BubbleTabBar(
                        tabs: [
                          RequestResponseTab(title: "Response Body"),
                          RequestResponseTab(title: "Headers"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            RequestEditor(
                              readOnly: true,
                              hintText: "...response body",
                            ),
                            Text("TODO: Headers")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: IssueRequestButton(),
          ),
        ],
      ),
    );
  }
}
