import 'package:app/presentation/utils/theme.dart';
import 'package:app/presentation/widgets/settings/bluetooth_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BluetoothConnectionStatusWidget extends ConsumerStatefulWidget {
  const BluetoothConnectionStatusWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BluetoothConnectionStatusWidgetState();
}

class _BluetoothConnectionStatusWidgetState extends ConsumerState<BluetoothConnectionStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openBluetoothDialog();
      },
      child: StreamBuilder<Object>(
          stream: FlutterBluePlus.adapterState,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final state = snapshot.data as BluetoothAdapterState;

            return Center(
              child: Icon(
                _buildIcon(state),
                color: _getColor(state),
                size: 24,
              ),
            );
          }),
    );
  }

  IconData _buildIcon(BluetoothAdapterState state) {
    switch (state) {
      case BluetoothAdapterState.unknown:
        return Icons.bluetooth_disabled;
      case BluetoothAdapterState.unavailable:
        return Icons.bluetooth_disabled;
      case BluetoothAdapterState.turningOn:
        return Icons.bluetooth_searching;
      case BluetoothAdapterState.on:
        return Icons.bluetooth_connected;
      case BluetoothAdapterState.turningOff:
        return Icons.bluetooth_searching;
      case BluetoothAdapterState.off:
        return Icons.bluetooth_disabled;
      case BluetoothAdapterState.unauthorized:
        return Icons.bluetooth_disabled;
    }
  }

  Color _getColor(BluetoothAdapterState state) {
    switch (state) {
      case BluetoothAdapterState.unknown:
        return colorScheme.red;
      case BluetoothAdapterState.unavailable:
        return colorScheme.red;
      case BluetoothAdapterState.turningOn:
        return colorScheme.yellow;
      case BluetoothAdapterState.on:
        return colorScheme.blue;
      case BluetoothAdapterState.turningOff:
        return colorScheme.yellow;
      case BluetoothAdapterState.off:
        return colorScheme.red;
      case BluetoothAdapterState.unauthorized:
        return colorScheme.red;
    }
  }

  _openBluetoothDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return const BluetoothDialog();
      },
    );
  }
}
