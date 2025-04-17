import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/main_screen.dart';

import 'screens/beranda_screen.dart';
import 'screens/feeds_screen.dart';
import 'screens/notifikasi_screen.dart';
import 'screens/profil_screen.dart';

final router = GoRouter(
  initialLocation: '/beranda',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/beranda',
              builder: (context, state) => const BerandaScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/feeds',
              builder: (context, state) => const FeedsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/notifikasi',
              builder: (context, state) => const NotifikasiScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profil',
              builder: (context, state) => const ProfilScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);