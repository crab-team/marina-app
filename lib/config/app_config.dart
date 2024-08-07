import 'package:flutter_flavor/flutter_flavor.dart';

class AppConfig {
  static String get revenueCatId => FlavorConfig.instance.variables["revenueCatId"];
  static String get envName => FlavorConfig.instance.variables["envName"];

  static void local() {
    FlavorConfig(
      name: "LOCAL",
      variables: {
        "envName": "Local",
        "revenueCatId": '1234',
      },
    );
  }

  static void dev() {
    FlavorConfig(
      name: "DEV",
      variables: {
        "envName": "Development",
        "revenueCatId": '5678',
      },
    );
  }

  static void production() {
    FlavorConfig(
      name: "PRODUCTION",
      variables: {
        "envName": "Production",
        "revenueCatId": '9999',
      },
    );
  }
}
