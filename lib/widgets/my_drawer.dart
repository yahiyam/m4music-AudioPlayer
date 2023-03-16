import 'package:audio_player/screens/most_played_screen.dart';
import 'package:audio_player/screens/playlist_pages/playlists_screen.dart';
import 'package:audio_player/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.dark_mode),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    MyListTile(
                      context: context,
                      title: 'Playlist',
                      icon: Icons.featured_play_list,
                      toPage: const PlaylistsScreen(),
                    ),
                    MyListTile(
                      context: context,
                      title: 'Most Played',
                      icon: Icons.local_fire_department_outlined,
                      toPage: const MostPlayedScreen(),
                    ),
                    MyListTile(
                      context: context,
                      title: 'Settings',
                      icon: Icons.settings_rounded,
                      toPage: const SettingsScreen(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
