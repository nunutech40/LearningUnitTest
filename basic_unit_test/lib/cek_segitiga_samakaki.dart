bool cekSegitigaSamaKaki(List<int> data) {
  if (data.length != 3) {
    throw ArgumentError("Data harus terdiri dari 3 elemen");
  }

  if (data.every((element) => element > 0)) {
    if (data[0] == data[1] || data[0] == data[2] || data[1] == data[2]) {
      return true;
    }
  }

  return false;
}
