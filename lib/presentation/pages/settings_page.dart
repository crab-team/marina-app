// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class SettingsPage extends ConsumerStatefulWidget {
//   const SettingsPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _SettingsPageState();
// }

// class _SettingsPageState extends ConsumerState<SettingsPage> {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: _buildFloatingActionButton(),
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: ,
//     );
//   }

//   FloatingActionButton _buildFloatingActionButton() {
//     return FloatingActionButton(
//       onPressed: () async {
//         await FlutterBluePlus.startScan();
//       },
//       child: Icon(_adapterState == BluetoothAdapterState.off ? Icons.bluetooth : Icons.bluetooth_disabled),
//     );
//   }
// }
