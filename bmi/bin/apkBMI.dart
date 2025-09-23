import 'dart:io';

void main() {
  List<String> history = []; // menyimpan riwayat perhitungan

  while (true) {
    print("\n=== Aplikasi Kalkulator BMI ===");
    stdout.write("Masukkan tinggi badan (cm): ");
    double tinggi = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan berat badan (kg): ");
    double berat = double.parse(stdin.readLineSync()!);