import 'package:audio_player/functions/back_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/listing_songs.dart';

class PlaylistSongsScreen extends StatefulWidget {
  const PlaylistSongsScreen({super.key});

  @override
  State<PlaylistSongsScreen> createState() => _PlaylistSongsScreenState();
}

class _PlaylistSongsScreenState extends State<PlaylistSongsScreen> {
  bool gridMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backbutton(context),
        title: const Text('Playlist Songs'),
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
