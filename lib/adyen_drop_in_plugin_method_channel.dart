import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'adyen_drop_in_plugin_platform_interface.dart';

/// An implementation of [AdyenDropInPluginPlatform] that uses method channels.
class MethodChannelAdyenDropInPlugin extends AdyenDropInPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('adyen_drop_in_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
