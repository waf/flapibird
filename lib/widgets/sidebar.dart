import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';

import 'api_navigation_item.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        accentColor: AppColor.foreground,
        dividerColor: Colors.transparent,
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: AppColor.foreground,
          fontSize: 15,
        ),
        child: Container(
          width: 300,
          color: AppColor.background,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Image(
                  image: AssetImage("assets/images/app_icon.png"),
                  width: 50,
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ExpansionTile(
                    title: Text(
                      "Reqres API",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    expandedAlignment: Alignment.centerLeft,
                    children: [
                      ApiNavigationItem(
                        method: "GET",
                        url: "/api/users/",
                      ),
                      ApiNavigationItem(
                        method: "POST",
                        url: "/api/users/",
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      "Todo API",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    expandedAlignment: Alignment.centerLeft,
                    children: [
                      ApiNavigationItem(
                        method: "GET",
                        url: "/api/todos/",
                      ),
                      ApiNavigationItem(
                        method: "POST",
                        url: "/api/todos/",
                      ),
                      ApiNavigationItem(
                        method: "PUT",
                        url: "/api/todos/",
                      ),
                      ApiNavigationItem(
                        method: "PATCH",
                        url: "/api/todos/",
                      ),
                      ApiNavigationItem(
                        method: "DELETE",
                        url: "/api/todos/",
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
