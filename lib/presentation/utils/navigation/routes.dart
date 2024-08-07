import 'package:app/presentation/pages/home_page.dart';
import 'package:app/presentation/pages/settings_page.dart';
import 'package:app/presentation/pages/splash_page.dart';
import 'package:app/presentation/pages/video_player_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String settings = 'settings';
  static const String videoPlayer = '/video_player';

  static const Map<String, String> names = {
    splash: 'splash',
    home: 'home',
    settings: 'settings',
    videoPlayer: 'videoPlayer',
  };
}

final router = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(
      path: Routes.splash,
      name: Routes.names[Routes.splash]!,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: Routes.home,
      name: Routes.names[Routes.home]!,
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: Routes.settings,
          name: Routes.names[Routes.settings]!,
          builder: (context, state) {
            return const SettingsPage();
          },
        ),
        GoRoute(
            path: Routes.videoPlayer,
            name: Routes.names[Routes.videoPlayer]!,
            builder: (context, state) {
              return const VideoPlayerPage();
            }),
      ],
    ),
  ],
  redirect: (context, state) async {
    return null;
  },
);
