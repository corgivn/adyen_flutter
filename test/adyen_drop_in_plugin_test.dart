import 'package:flutter_test/flutter_test.dart';
import 'package:adyen_drop_in_plugin/adyen_drop_in_plugin.dart';
import 'package:adyen_drop_in_plugin/adyen_drop_in_plugin_platform_interface.dart';
import 'package:adyen_drop_in_plugin/adyen_drop_in_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAdyenDropInPluginPlatform
    with MockPlatformInterfaceMixin
    implements AdyenDropInPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AdyenDropInPluginPlatform initialPlatform = AdyenDropInPluginPlatform.instance;

  test('$MethodChannelAdyenDropInPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAdyenDropInPlugin>());
  });

  test('getPlatformVersion', () async {
    AdyenDropInPlugin adyenDropInPlugin = AdyenDropInPlugin();
    MockAdyenDropInPluginPlatform fakePlatform = MockAdyenDropInPluginPlatform();
    AdyenDropInPluginPlatform.instance = fakePlatform;

    expect(await adyenDropInPlugin.getPlatformVersion(), '42');
  });
}
