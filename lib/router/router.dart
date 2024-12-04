import 'package:flutter_my_anime_list/features/main_menu/presentation/screens/main_menu_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainMenuScreen(),
    ),
  ],
);
