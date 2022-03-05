import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Inputan : ");
  String? kata = stdin.readLineSync();
  int angka = int.parse(kata!);
  int c = 0;
  int counter = 1;

  for (int i = 1; i <= angka; i++) {
    if (i >= 2 && i <= (angka / 2).ceil()) {
      c = c + 1;
    } else if (i >= (angka / 2).ceil() + 1 && i <= angka) {
      c = c - 1;
    }
    if (counter > 9) {
      counter = 1;
    }

    for (int j = 0; j < angka; j++) {
      //atas dan bawah

      if (i == 1 || i == angka) {
        if (j == (angka - 1) / 2) {
          stdout.write("$counter");
        } else {
          stdout.write("*");
        }
      } //else if buat yang ditengah
      else if (i == (angka + 1) / 2) {
        if (j % 2 == 0) {
          stdout.write("$counter");
        } else {
          stdout.write(" ");
        }
      } else {
        if (j == ((angka - 1) / 2) - c || j == ((angka - 1) / 2) + c) {
          stdout.write("$counter");
        } else if (j >= ((angka - 1) / 2) - c && j <= (angka - 1) / 2 ||
            j <= ((angka - 1) / 2) + c && j >= (angka - 1) / 2) {
          stdout.write(" ");
        } else {
          stdout.write("*");
        }
      }
    }
    print("");
    counter++;
  }
}
