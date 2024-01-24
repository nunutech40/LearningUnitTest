// Buatlah sebuah fungsi, apakah sebuah bilangan merupakan bilangan prima atau bukan
// Bilangan prima adalah bilangan yang hanya bisa habis jika  dibagi 1 atau bilangan itu sendiri

bool bilanganPrima(int value) {
  var result = true;
  // bilangan yang kurang dari 2 bukan bilangan prima
  if (value < 2) {
    result = false;
  } else if (value >= 2 && value <= 3) {
    result = true;
  } else if (value % 2 == 0 || value % 3 == 0) {
    result = false;
  } else {
    result = true;
  }

  return result;
}
