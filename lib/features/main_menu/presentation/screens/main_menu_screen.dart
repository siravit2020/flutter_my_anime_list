import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_my_anime_list/features/search/presentation/screens/search_anime_screen.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  final PersistentTabController _controller = PersistentTabController();
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        const HomeScreen(),
        const SearchAnimeScreen(),
        Container(
          color: Colors.green,
        ),
      ],
      items: _navBarsItems(),
      backgroundColor: context.theme.appColors.backgroundColor,
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: 'Home',
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorPrimary: context.theme.appColors.primary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: 'Search',
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorPrimary: context.theme.appColors.primary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.square_favorites),
        title: 'Favorite',
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorPrimary: context.theme.appColors.primary,
      ),
    ];
  }
}
