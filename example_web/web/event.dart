import 'package:sentry/src/protocol.dart';

final event = SentryEvent(
  logger: 'main',
  serverName: 'server.dart',
  release: '1.4.0-preview.1',
  environment: 'Test',
  message: SentryMessage('This is an example Dart event.'),
  tags: const <String, String>{'project-id': '7371'},
  // ignore: deprecated_member_use, deprecated_member_use_from_same_package
  extra: const <String, String>{'section': '1'},
  // fingerprint: const <String>['example-dart'],
  user: SentryUser(
    id: '800',
    username: 'first-user',
    email: 'first@user.lan',
    // ipAddress: '127.0.0.1',
    data: <String, String>{'first-sign-in': '2020-01-01'},
  ),
  breadcrumbs: [
    Breadcrumb(
      message: 'UI Lifecycle',
      timestamp: DateTime.now().toUtc(),
      category: 'ui.lifecycle',
      type: 'navigation',
      data: {'screen': 'MainActivity', 'state': 'created'},
      level: SentryLevel.info,
    ),
  ],
  contexts: Contexts(
    operatingSystem: const SentryOperatingSystem(
      name: 'Android',
      version: '5.0.2',
      build: 'LRX22G.P900XXS0BPL2',
      kernelVersion:
          'Linux version 3.4.39-5726670 (dpi@SWHC3807) (gcc version 4.8 (GCC) ) #1 SMP PREEMPT Thu Dec 1 19:42:39 KST 2016',
      rooted: false,
    ),
    runtimes: [const SentryRuntime(name: 'ART', version: '5')],
    app: SentryApp(
      name: 'Example Dart App',
      version: '1.42.0',
      identifier: 'HGT-App-13',
      build: '93785',
      buildType: 'release',
      deviceAppHash: '5afd3a6',
      startTime: DateTime.now().toUtc(),
    ),
    browser: const SentryBrowser(name: 'Firefox', version: '42.0.1'),
    device: SentryDevice(
      name: 'SM-P900',
      family: 'SM-P900',
      model: 'SM-P900 (LRX22G)',
      modelId: 'LRX22G',
      arch: 'armeabi-v7a',
      batteryLevel: 99,
      orientation: SentryOrientation.landscape,
      manufacturer: 'samsung',
      brand: 'samsung',
      screenDensity: 2.1,
      screenDpi: 320,
      online: true,
      charging: true,
      lowMemory: true,
      simulator: false,
      memorySize: 1500,
      freeMemory: 200,
      usableMemory: 4294967296,
      storageSize: 4294967296,
      freeStorage: 2147483648,
      externalStorageSize: 8589934592,
      externalFreeStorage: 2863311530,
      bootTime: DateTime.now().toUtc(),
    ),
  ),
);
