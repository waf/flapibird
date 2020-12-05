import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';

class ApiNavigationItem extends StatelessWidget {
  final String method;
  final String url;
  Color methodColor;

  ApiNavigationItem({Key key, this.method, this.url}) : super(key: key) {
    this.methodColor = "GET" == this.method
        ? AppColor.green
        : "POST" == this.method
            ? AppColor.purple
            : "PUT" == this.method
                ? AppColor.pink
                : "PATCH" == this.method
                    ? AppColor.orange
                    : "DELETE" == this.method
                        ? AppColor.red
                        : AppColor.foreground;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(24, 8, 8, 8),
          child: SizedBox(
            width: 48,
            child: Text(
              method,
              style: TextStyle(
                fontSize: 12,
                color: methodColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Text(
          url,
          style: TextStyle(),
        ),
      ],
    );
  }
}
