import 'package:flutter_test/flutter_test.dart';
import 'package:peeka/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('JacketsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
