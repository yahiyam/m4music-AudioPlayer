import 'package:audio_player/screens/home_tabs/recently_played_screen.dart';
import 'package:audio_player/widgets/my_menu_button.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';
import 'home_tabs/all_songs_screen.dart';
import 'home_tabs/favorite_songs_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool gridMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                MyMenuButton(
                  item1: PopupMenuItem(
                    child: TextButton.icon(
                      onPressed: toggleViewMode,
                      icon: Icon(
                        gridMode ? Icons.list_rounded : Icons.grid_view_rounded,
                      ),
                      label: gridMode
                          ? const Text('List View')
                          : const Text('Grid View'),
                    ),
                  ),
                ),
              ],
              bottom: const TabBar(
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                isScrollable: true,
                tabs: [
                  Tab(text: "All Songs"),
                  Tab(text: "Favorites"),
                  Tab(text: "Recently Played"),
                ],
              ),
            )
          ],
          body: TabBarView(
            children: [
              AllSongsScreen(gridMode: gridMode),
              FavoriteSongsScreen(gridMode: gridMode),
              RecentlyPlayedScreen(gridMode: gridMode),
            ],
          ),
        ),
      ),
    );
  }

  void toggleViewMode() {
    setState(() {
      gridMode = !gridMode;
      Navigator.pop(context);
    });
  }
}
