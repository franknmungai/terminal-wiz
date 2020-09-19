import 'dart:io';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
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
