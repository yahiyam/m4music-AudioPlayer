import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final BuildContext context;
  final String title;
  final IconData? icon;
  final Widget? toPage;

  const MyListTile({
    super.key,
    required this.context,
    required this.title,
    this.icon,
    this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null ? Icon(icon) : null,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      onTap: () {
        if (toPage != null) {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return toPage!;
            },
          ));
        }
      },
    );
  }
}

