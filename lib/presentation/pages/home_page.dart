import 'package:app/presentation/utils/navigation/navigator.dart';
import 'package:app/presentation/widgets/home/bluetooth_connection_status_widget.dart';
import 'package:app/presentation/widgets/shared/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
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
        title: const Text('Videos'),
        centerTitle: true,
        actions: const [BluetoothConnectionStatusWidget()],
      ),
      body: StreamBuilder<Object>(
          stream: FlutterBluePlus.adapterState,
          builder: (context, snapshot) {
            final event = snapshot.data;
            print(event);

            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No hay videos disponibles'),
                ],
              ),
            );
          }),
    );
  }
}
