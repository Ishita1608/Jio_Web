// @dart=2.7

import 'dart:ui' as ui;

import 'package:jio_web/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
