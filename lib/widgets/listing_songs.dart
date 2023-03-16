import 'package:audio_player/widgets/audio_view.dart';
import 'package:flutter/material.dart';

class ListAudios extends StatelessWidget {
  const ListAudios({
    super.key,
    required this.gridMode,
  });
  final bool gridMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Expanded(
        child: gridMode ? const AudioGridView() : const AudioTileView(),
      ),
    );
  }
}
