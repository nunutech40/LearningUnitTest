import 'package:basic_unit_test/convertStringToArray.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test function to return string list from string with koma', () {
    // Arrange
    String string = 'foo,bar,baz';

    // act
    List<String> result = convertStringToArray(string);

    // expected result
    List<String> expectedResult = ['foo', 'bar', 'baz'];
    expect(result, expectedResult);
  });
}
