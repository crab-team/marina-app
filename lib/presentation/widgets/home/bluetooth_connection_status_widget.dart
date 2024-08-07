import 'package:app/presentation/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BluetoothConnectionStatusWidget extends ConsumerStatefulWidget {
  const BluetoothConnectionStatusWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BluetoothConnectionStatusWidgetState();
}

class _BluetoothConnectionStatusWidgetState extends ConsumerState<BluetoothConnectionStatusWidget> {
  @override
  Widget build(BuildContext context) {
    const state = true;
    return Center(
      child: Icon(
        state ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
        color: state ? colorScheme.blue : colorScheme.tertiary,
        size: 24,
      ),
    );
  }
}
