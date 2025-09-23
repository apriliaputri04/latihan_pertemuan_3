
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
