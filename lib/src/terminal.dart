import 'dart:io';
import 'option.dart';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void printOptions(List<Option> options) {
    for (var i = 0; i < options.length; i++) {
      stdout.writeln('[$i] - ${options[i].label}');
    }
    // The map uses the indices of this list as keys and the corresponding objects as values
    options.asMap().forEach((index, option) {
      stdout.writeln('[$index] - ${option.label}');
    });

    stdout.writeln('Enter a choice');
    stdout.write('>');
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void clear() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f'); //clear a windows console
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
