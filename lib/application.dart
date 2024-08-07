import 'package:app/presentation/utils/navigation/routes.dart';
import 'package:app/presentation/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpishiApp extends ConsumerWidget {
  const EpishiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'APP',
      routerConfig: router,
      theme: theme,
    );
  }
}
