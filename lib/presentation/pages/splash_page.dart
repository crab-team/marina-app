import 'package:app/presentation/utils/navigation/navigator.dart';
import 'package:app/presentation/widgets/shared/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 2), () {
        AppNavigator.goToHome();
      });
    });

    return const Scaffold(
      body: Center(
        child: LogoWidget(size: 180),
      ),
    );
  }
}
