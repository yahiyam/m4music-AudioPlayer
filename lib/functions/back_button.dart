import 'package:flutter/material.dart';

IconButton backbutton(BuildContext context) {
  return IconButton(
    onPressed: () => Navigator.pop(context),
    icon: const Icon(
      Icons.arrow_back_ios_new_rounded,
      size: 25,
      color: Colors.black54,//color
    ),
  );
}
