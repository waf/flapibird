import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class JsonTextInputFormatter extends TextInputFormatter {
  JsonEncoder encoder;

  JsonTextInputFormatter() {
    encoder = new JsonEncoder.withIndent('  ');
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    var start = newValue.selection.start;
    var end = newValue.selection.end;

    if (start == end && text.substring(end - 1, end) == "}") {
      try {
        var obj = json.decode(text) as Map<String, dynamic>;
        var formatted = encoder.convert(obj);
        if (formatted != "{}") {
          return newValue.copyWith(text: formatted);
        }
      } on FormatException catch (e) {
        print(e.message);
      }
    }
    return newValue;
  }
}
