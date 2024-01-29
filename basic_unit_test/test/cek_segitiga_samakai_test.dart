import 'package:basic_unit_test/cek_segitiga_samakaki.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('test segitiga samakaki', () {
    test(
        'apakah segitiga dengan 2 kaki sama ini adalah sama kaki? harusnya iya',
        () {
      // arrange
      List<int> data = [12, 12, 4];

      // act
      bool cekSegitiga = cekSegitigaSamaKaki(data);

      // assert
      expect(cekSegitiga, isTrue);
    });

    test(
        'apakah segitiga dengan 2 kaki sama ini adalah sama kaki? harusnya iya',
        () {
      // arrange
      List<int> data = [4, 12, 12];

      // act
      bool cekSegitiga = cekSegitigaSamaKaki(data);

      // assert
      expect(cekSegitiga, isTrue);
    });

    test(
        'apakah segitiga dengan 2 kaki sama ini adalah sama kaki? harusnya iya',
        () {
      // arrange
      List<int> data = [12, 9, 12];

      // act
      bool cekSegitiga = cekSegitigaSamaKaki(data);

      // assert
      expect(cekSegitiga, isTrue);
    });

    test(
        'apakah segitiga dengan 2 kaki sama ini adalah sama kaki? harusnya bukan',
        () {
      // arrange
      List<int> data = [12, 12, 0];

      // act
      bool cekSegitiga = cekSegitigaSamaKaki(data);

      // assert
      expect(cekSegitiga, isFalse);
    });

    test(
        'apakah segitiga dengan 3 kaki sama ini adalah sama kaki? harusnya iya',
        () {
      // arrange
      List<int> data = [12, 12, 12];

      // act
      bool cekSegitiga = cekSegitigaSamaKaki(data);

      // assert
      expect(cekSegitiga, isTrue);
    });

    test('apakah segitiga dengan hanya inputan dua kaki akan throw error?', () {
      // arrange
      List<int> data = [12, 12];

      // assert
      expect(
          // Menggunakan closure untuk memanggil fungsi
          () => cekSegitigaSamaKaki(data),
          throwsA(isA<ArgumentError>().having(
              (e) => e.message, 'message', 'Data harus terdiri dari 3 elemen')),
          reason: "Harus melempar ArgumentError dengan pesan yang sesuai.");
    });

    test(
        'apakah segitiga dengan hanya inputan lebih dari 3 kaki akan throw error?',
        () {
      // arrange
      List<int> data = [12, 12, 16, 7];

      // assert
      expect(
          // Menggunakan closure untuk memanggil fungsi
          () => cekSegitigaSamaKaki(data),
          throwsA(isA<ArgumentError>().having(
              (e) => e.message, 'message', 'Data harus terdiri dari 3 elemen')),
          reason: "Harus melempar ArgumentError dengan pesan yang sesuai.");
    });

    test('apakah segitiga inputan data kosong', () {
      // arrange
      List<int> data = [];

      // assert
      expect(
          // Menggunakan closure untuk memanggil fungsi
          () => cekSegitigaSamaKaki(data),
          throwsA(isA<ArgumentError>().having(
              (e) => e.message, 'message', 'Data harus terdiri dari 3 elemen')),
          reason: "Harus melempar ArgumentError dengan pesan yang sesuai.");
    });
  });
}
