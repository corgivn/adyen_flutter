import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:adyen_drop_in_plugin/adyen_drop_in_plugin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAdyenDropInPlugin platform = MethodChannelAdyenDropInPlugin();
  const MethodChannel channel = MethodChannel('adyen_drop_in_plugin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
