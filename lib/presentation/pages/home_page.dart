import 'package:app/presentation/utils/navigation/navigator.dart';
import 'package:app/presentation/widgets/home/bluetooth_connection_status_widget.dart';
import 'package:app/presentation/widgets/shared/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BluetoothConnectionStatusWidget(),
        title: const Text('Videos'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, size: 24),
            onPressed: () {
              AppNavigator.goToSettings();
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('No hay videos disponibles'),
          ],
        ),
      ),
    );
  }
}
