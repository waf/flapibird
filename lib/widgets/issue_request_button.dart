import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';

class IssueRequestButton extends StatelessWidget {
  const IssueRequestButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      animationDuration: Duration(milliseconds: 5000),
      elevation: 2.0,
      fillColor: AppColor.comment,
      child: Icon(
        Icons.play_arrow,
        color: Colors.white,
        size: 28.0,
      ),
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
    );
  }
}
