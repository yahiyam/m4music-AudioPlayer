import 'package:flutter/material.dart';

import '../functions/back_button.dart';
import '../widgets/listing_songs.dart';

class MostPlayedScreen extends StatefulWidget {
  const MostPlayedScreen({super.key});

  @override
  State<MostPlayedScreen> createState() => _MostPlayedScreenState();
}

class _MostPlayedScreenState extends State<MostPlayedScreen> {
  bool gridMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backbutton(context),
        title: const Text('Most Played'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: toggleViewMode,
            icon: Icon(
              gridMode ? Icons.list_rounded : Icons.grid_view_rounded,
            ),
          )
        ],
      ),
      body: ListAudios(gridMode: gridMode),
    );
  }

  void toggleViewMode() {
    setState(() {
      gridMode = !gridMode;
    });
  }
}
