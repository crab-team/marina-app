import 'dart:async';

import 'package:app/presentation/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothDialog extends StatefulWidget {
  const BluetoothDialog({super.key});

  @override
  State<BluetoothDialog> createState() => _BluetoothDialogState();
}

class _BluetoothDialogState extends State<BluetoothDialog> {
  List<BluetoothDevice> devs = [];
  BluetoothAdapterState _adapterState = BluetoothAdapterState.unknown;

  late StreamSubscription<BluetoothAdapterState> _adapterStateStateSubscription;

  @override
  void initState() {
    super.initState();
    _adapterStateStateSubscription = FlutterBluePlus.adapterState.listen((state) {
      _adapterState = state;
      if (mounted) {
        setState(() {});
      }
    });

    FlutterBluePlus.startScan();
  }

  @override
  void dispose() {
    _adapterStateStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Connect to a device'),
      insetPadding: kPaddingApp,
      contentPadding: kPaddingAppSmall,
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.9,
        child: StreamBuilder<Object>(
            stream: FlutterBluePlus.onScanResults,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final scanResults = snapshot.data as List<ScanResult>;

              if (scanResults.isEmpty) {
                return Center(
                  child: Text('No devices found', style: TextStyle(color: colorScheme.onPrimaryContainer)),
                );
              }

              devs = scanResults.map((e) => e.device).toList();

              if (devs.isEmpty) {
                return Center(
                  child: Text('Searching...', style: TextStyle(color: colorScheme.onPrimaryContainer)),
                );
              }

              return ListView.builder(
                itemCount: devs.length,
                itemBuilder: (context, index) {
                  final dev = devs[index];
                  return Visibility(
                    visible: dev.advName.isNotEmpty,
                    child: ListTile(
                      title: Text(dev.advName, style: TextStyle(color: colorScheme.onPrimaryContainer)),
                      trailing: ElevatedButton(
                        onPressed: () async {
                          dev.isConnected ? await dev.disconnect() : await dev.connect();
                        },
                        child: Text(dev.isConnected ? 'Disconnect' : 'Connect'),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
