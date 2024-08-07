import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double? size;

  const LogoWidget({super.key, this.size = 54});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/icon.png', width: size, height: size);
  }
}
