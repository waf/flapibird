import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';

class RequestUrlBar extends StatelessWidget {
  const RequestUrlBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        border: Border(
          bottom: BorderSide(
            color: Color(0xffdddddd),
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: DropdownButtonFormField(
              itemHeight: 64,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              iconEnabledColor: AppColor.darkGrey,
              dropdownColor: AppColor.lightGrey,
              onChanged: (_) {},
              items: [
                DropdownMenuItem(
                  child: SizedBox(
                    width: 64,
                    child: Text(
                      "GET",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  key: Key("POST"),
                  child: SizedBox(
                    width: 64,
                    child: Text(
                      "POST",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  child: SizedBox(
                    width: 64,
                    child: Text(
                      "PUT",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  child: SizedBox(
                    width: 64,
                    child: Text(
                      "PATCH",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  child: SizedBox(
                    width: 64,
                    child: Text(
                      "DELETE",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.url,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.only(left: 4),
                enabledBorder: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.darkGrey),
                ),
                hintText: "request url...",
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: DropdownButtonFormField(
              itemHeight: 64,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              iconEnabledColor: AppColor.darkGrey,
              dropdownColor: AppColor.lightGrey,
              onChanged: (_) {},
              items: [
                DropdownMenuItem(child: Text("HTTP/1.1")),
                DropdownMenuItem(child: Text("HTTP/2")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
