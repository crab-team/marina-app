import 'package:app/presentation/utils/navigation/routes.dart';

class AppNavigator {
  static goToSplash() => router.go(Routes.splash);
  static goToHome() => router.go(Routes.home);
  static goToVideoPlayer() => router.push('${Routes.home}/${Routes.videoPlayer}');
  static goBack() => router.pop();
  static goToUrl(String url) async {
    // Uri uri = Uri.parse(url);
    // try {
    //   bool wasLaunched = await launchUrl(uri);

    //   if (!wasLaunched) {
    //     throw Exception('Could not launch $url');
    //   }
    // } catch (e) {
    //   debugPrint(e.toString());
    // }
  }
}
