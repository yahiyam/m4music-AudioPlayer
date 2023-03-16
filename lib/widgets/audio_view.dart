import 'package:audio_player/widgets/my_menu_button.dart';
import 'package:flutter/material.dart';

class AudioTileView extends StatelessWidget {
  const AudioTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        padding: const EdgeInsets.only(
          bottom: kBottomNavigationBarHeight + 30,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.only(left: 15),
            onTap: () {},
            title: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'songTitle',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'album',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.music_note),
            ),
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
                MyMenuButton(
                  item1: PopupMenuItem(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.playlist_add),
                      label: const Text('Add to playlist'),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class AudioGridView extends StatelessWidget {
  const AudioGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: GridView.builder(
        padding: const EdgeInsets.only(
          bottom: kBottomNavigationBarHeight + 30,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GridTile(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
                MyMenuButton(
                  item1: PopupMenuItem(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.playlist_add),
                      label: const Text('Add to playlist'),
                    ),
                  ),
                )
              ],
            ),
            footer: Text(
              'songTitle',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
