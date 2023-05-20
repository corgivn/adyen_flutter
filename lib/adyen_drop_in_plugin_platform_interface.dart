import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'adyen_drop_in_plugin_method_channel.dart';

abstract class AdyenDropInPluginPlatform extends PlatformInterface {
  /// Constructs a AdyenDropInPluginPlatform.
  AdyenDropInPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AdyenDropInPluginPlatform _instance = MethodChannelAdyenDropInPlugin();

  /// The default instance of [AdyenDropInPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAdyenDropInPlugin].
  static AdyenDropInPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AdyenDropInPluginPlatform] when
  /// they register themselves.
  static set instance(AdyenDropInPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
