import 'package:flutter/material.dart';

import '../../widgets/listing_songs.dart';

class RecentlyPlayedScreen extends StatelessWidget {
  const RecentlyPlayedScreen({
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
