import 'package:basic_unit_test/get_full_name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("test func fullname", () {
    test('test untuk first name is empty', () {
      // arrange
      String firstName = "";
      String lastName = "Putri";
      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Putri";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk last name is empty', () {
      // arrange
      String firstName = "Dorothy";
      String lastName = "";

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Dorothy";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk first and last name is empty', () {
      // arrange
      String firstName = "";
      String lastName = "";

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "No Name";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk first and last name is nil', () {
      // arrange
      String? firstName = null;
      String? lastName = null;

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "No Name";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk first name is nil', () {
      // arrange
      String? firstName = null;
      String lastName = "Putri";
      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Putri";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk last name is null', () {
      // arrange
      String firstName = "Dorothy";
      String? lastName = null;

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Dorothy";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk fullname with input with extra space', () {
      // arrange
      String firstName = "   Dorothy";
      String? lastName = "   ";

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Dorothy";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test untuk fullname and return right fullname', () {
      // arrange
      String firstName = "Dorothy";
      String? lastName = "Putri";

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Dorothy Putri";

      // assert
      expect(getFullName, expectedResult);
    });

    test(
        'test untuk fullname with input first and last name more than one words',
        () {
      // arrange
      String firstName = "Dorothy Putri";
      String? lastName = "Anita Tarib Halawa";

      // act
      String getFullName = fullName(firstName, lastName);

      String expectedResult = "Dorothy Putri Anita Tarib Halawa";

      // assert
      expect(getFullName, expectedResult);
    });

    test('test for very long first and last names', () {
      // arrange
      String firstName = "A very very long first name that goes on and on";
      String lastName = "A very very long last name that also goes on and on";
      // act
      String getFullName = fullName(firstName, lastName);
      String expectedResult =
          "A very very long first name that goes on and on A very very long last name that also goes on and on";
      // assert
      expect(getFullName, expectedResult);
    });

    test('test for names with non-ASCII characters', () {
      // arrange
      String firstName = "José";
      String lastName = "García";
      // act
      String getFullName = fullName(firstName, lastName);
      String expectedResult = "José García";
      // assert
      expect(getFullName, expectedResult);
    });

    test('test for names with numbers or special characters', () {
      // arrange
      String firstName = "Jane3";
      String lastName = "@Doe";
      // act
      String getFullName = fullName(firstName, lastName);
      String expectedResult =
          "Jane3 @Doe"; // or whatever your expected behavior is
      // assert
      expect(getFullName, expectedResult);
    });

    test('test for one null and one empty input', () {
      // arrange
      String? firstName = null;
      String lastName = "";
      // act
      String getFullName = fullName(firstName, lastName);
      String expectedResult = "No Name"; // depending on your function's logic
      // assert
      expect(getFullName, expectedResult);
    });
  });
}
