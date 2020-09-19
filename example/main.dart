import 'dart:io';

import 'package:terminal_wiz/src/terminal.dart';
import 'package:terminal_wiz/src/option.dart';

void main() {
  var terminal = new Terminal();
  terminal.clear();
  print("Terminal wiz");

  var options = [
    new Option(label: 'I want Red', value: '#FF1B2C'),
    new Option(label: 'I want Blue', value: '#27ADE9'),
    new Option(label: 'I want Green', value: '#83C880'),
  ];
  terminal.printOptions(options);
  var response = terminal.collectInput();
  stdout.writeln(response);
}
