import 'package:audio_player/functions/back_button.dart';
import 'package:audio_player/screens/playlist_pages/playlist_songs.dart';
import 'package:audio_player/widgets/my_menu_button.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatefulWidget {
  const PlaylistsScreen({super.key});

  @override
  State<PlaylistsScreen> createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backbutton(context),
        title: const Text('Playlists'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          padding: const EdgeInsets.only(
            bottom: kBottomNavigationBarHeight + 10,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.topRight,
              fit: StackFit.loose,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const PlaylistSongsScreen();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'playlistName',
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 2,
                          ),
                          const Text('{playlistSongList.length} Songs'),
                        ],
                      ),
                    ),
                  ),
                ),
                MyMenuButton(
                  item1: PopupMenuItem(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      label: const Text("Delete"),
                    ),
                  ),
                  item2: PopupMenuItem(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blueAccent,
                      ),
                      label: const Text("Edit"),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('add a playlist'.toUpperCase()),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
