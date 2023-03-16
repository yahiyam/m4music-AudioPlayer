import 'package:flutter/material.dart';

import '../functions/back_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backbutton(context),
        title: const Text('Settings'),
        centerTitle: true,
      ),
    );
  }
}
