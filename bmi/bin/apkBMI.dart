import 'dart:io';

void main() {
  List<String> history = []; // menyimpan riwayat perhitungan

  while (true) {
    print("\n=== Aplikasi Kalkulator BMI ===");
    stdout.write("Masukkan tinggi badan (cm): ");
    double tinggi = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan berat badan (kg): ");
    double berat = double.parse(stdin.readLineSync()!);

    // Kalkulasi BMI
    double tinggiMeter = tinggi / 100;
    double bmi = berat / (tinggiMeter * tinggiMeter);

    // Kategorisasi
    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      kategori = "Normal";
    } else {
      kategori = "Gemuk";
    }

    // Simpan ke riwayat dengan format per baris
    String result =
        "Tinggi : ${tinggi} cm | Berat : ${berat} kg | BMI : ${bmi.toStringAsFixed(2)} | Status : $kategori";
    history.add(result);

    // ===== Hasil Perhitungan =====
    print("\n=== Hasil Perhitungan ===");
    print("Tinggi : ${tinggi} cm");
    print("Berat  : ${berat} kg");
    print("BMI    : ${bmi.toStringAsFixed(2)}");
    print("Status : $kategori");

    // ===== Riwayat Perhitungan =====
    print("\n=== Riwayat Perhitungan ===");
    for (int i = 0; i < history.length; i++) {
      print("Data ke-${i + 1}:");
      List<String> detail = history[i].split("|");
      for (String d in detail) {
        print("  ${d.trim()}");
      }
      print(""); // spasi antar data
    }

    // Tanya apakah mau lanjut
    stdout.write("Hitung lagi? (y/n): ");
    String? lanjut = stdin.readLineSync();
    if (lanjut == null || lanjut.toLowerCase() != 'y') {
      print("Terima kasih telah menggunakan Kalkulator BMI!");
      break;
    }
  }
}