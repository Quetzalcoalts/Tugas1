import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Inputan : ");
  String? kata = stdin.readLineSync();
  int angka = int.parse(kata!);
  int c = 0;

  for (int i = 1; i <= angka; i++) {
    for (int j = 0; j < angka; j++) {
      //atas dan bawah
      if (i == 1 || i == angka) {
        if (j == (angka - 1) / 2) {
          stdout.write("$i");
        } else {
          stdout.write("*");
        }
      } //else if buat yang ditengah
      else if (i == (angka + 1) / 2) {
        if (j == 0 || j == (angka - 1) / 2 || j == angka - 1) {
          stdout.write("$i");
        } else {
          stdout.write(" ");
        }
      } else {
        if (i % 2 == 0) {
          if (j == ((angka + 1) / 2) - 2 || j == ((angka + 1) / 2)) {
            stdout.write("$i");
          } else if (j <= ((angka + 1) / 2) - 2 || j >= ((angka + 1) / 2)) {
            stdout.write("*");
          } else {
            stdout.write(" ");
          }
        } //else buat yang baris 3 sama baris 5
        else {
          if (j == ((angka + 1) / 2) - 3 || j == (angka + 1) / 2 + 1) {
            stdout.write("$i");
          } else if (j <= ((angka + 1) / 2) - 3 || j >= ((angka + 1) / 2) + 1) {
            stdout.write("*");
          } else {
            stdout.write(" ");
          }
        }
      }
    }
    print("");
  }
}
