import 'package:flutter/material.dart';

void main() {
  print("ceek ${bilanganPrima(5)}");
}

bool bilanganPrima(int value) {
  var result = true;
  // bilangan yang kurang dari 2 bukan bilangan prima
  if (value < 2) {
    print("cek disini 1");
    result = false;
  } else if (value >= 2 && value <= 3) {
    print("cek disini 2");
    result = true;
  } else if (value % 2 == 0 || value % 3 == 0) {
    print("cek disini 3");
    result = false;
  } else {
    result = true;
  }

  return result;
}
