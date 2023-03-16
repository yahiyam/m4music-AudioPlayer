import 'package:audio_player/widgets/listing_songs.dart';
import 'package:flutter/material.dart';

class AllSongsScreen extends StatelessWidget {
  const AllSongsScreen({
    super.key,
    required this.gridMode,
  });

  final bool gridMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListAudios(gridMode: gridMode),
    );
  }
}
