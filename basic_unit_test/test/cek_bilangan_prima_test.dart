import 'dart:math';

import 'package:basic_unit_test/cek_bilangan_prima.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('testing function cek bilangan prima', () {
    test('cek apakah 1 merupakan bilangan prima', () {
      // arrange
      int data = 1;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isFalse);
    });

    test('cek apakah 2 merupakan bilangan prima', () {
      // arrange
      int data = 2;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek apakah 3 merupakan bilangan prima', () {
      // arrange
      int data = 3;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek apakah 4 bukan bilangan prima', () {
      // arrange
      int data = 4;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isFalse);
    });

    test('cek apakah 5 meruapakan bilangan prima', () {
      // arrange
      int data = 5;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek apakah 6 bukan bilangan prima', () {
      // arrange
      int data = 6;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isFalse);
    });

    test('cek apakah 7 bukan bilangan prima', () {
      // arrange
      int data = 7;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek random data 18377 bukan bilangan prima', () {
      // arrange
      int data = 28387;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek bilangan besar yang merupakan bilangan prima', () {
      // arrange
      int data = 104729; // Contoh bilangan besar yang merupakan prima

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isTrue);
    });

    test('cek apakah bilangan negatif bukan bilangan prima', () {
      // arrange
      int data = -7;

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isFalse);
    });

    test('cek bilangan besar yang bukan bilangan prima', () {
      // arrange
      int data = 28388; // Contoh bilangan besar yang bukan prima

      // act
      bool result = bilanganPrima(data);

      // assert
      expect(result, isFalse);
    });
  });
}
