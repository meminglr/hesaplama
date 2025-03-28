class Btn {
  double sonuc = 0;
  String birinci = "";
  String ikinci = "";
  double? a;
  double? b;

  void sayi(params) {
    if (a == null) {
      birinci = birinci + params;
    } else {
      ikinci = ikinci + params;
    }
  }

  void islem(params) {
    if (sonuc != 0 && a != null && b != null) {
      birinci = sonuc % 1 == 0 ? sonuc.toInt().toString() : sonuc.toString();

      ikinci = "";
      sonuc = 0;
    }
    a = double.parse(birinci);
    birinci = birinci + params;
  }

  void esit() {
    if (ikinci != "") {
      b = double.parse(ikinci);
    }

    if (a != null && b != null) {
      birinci.contains("+")
          ? sonuc = a! + b!
          : birinci.contains("*")
              ? sonuc = a! * b!
              : birinci.contains("/")
                  ? sonuc = a! / b!
                  : sonuc = a! - b!;
    }
  }

  void clear() {
    sonuc = 0;
    birinci = "";
    ikinci = "";
    a = null;
    b = null;
  }
}
