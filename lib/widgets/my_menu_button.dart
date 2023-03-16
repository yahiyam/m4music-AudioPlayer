import 'package:flutter/material.dart';

class MyMenuButton extends StatelessWidget {
  const MyMenuButton({
    super.key,
    required this.item1,
    this.item2,
  });
  final PopupMenuItem<dynamic> item1;
  final PopupMenuItem<dynamic>? item2;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert_rounded,
        color: Theme.of(context).primaryColorDark,
      ),
      elevation: 1,
      constraints: const BoxConstraints(maxWidth: 175),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      itemBuilder: (context) {
        final items = <PopupMenuItem<dynamic>>[item1];
        if (item2 != null) {
          items.add(item2!);
        }
        return items;
      },
    );
  }
}