import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showSnackbar({BuildContext? context, String title = ""}) {
  ScaffoldMessenger.of(context!).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(title)));
}
