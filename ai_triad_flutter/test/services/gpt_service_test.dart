import 'package:flutter_test/flutter_test.dart';
import 'package:ai_triad/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('GptServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
