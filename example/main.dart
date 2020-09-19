import 'dart:io';
import 'package:terminal_wiz/terminal_wiz.dart';

void main() {
  stdout.writeln("Terminal Wiz");
  final prompter = new Prompter();

  final options = [
    new Option(label: 'I want Red', value: '#FF1B2C'),
    new Option(label: 'I want Blue', value: '#27ADE9'),
    new Option(label: 'I want Green', value: '#83C880'),
  ];
  final colorCode = prompter.askMultiple('Choose a color', options);
  bool resp = prompter.askBinary('Do you like Dart?');

  stdout.writeln(colorCode);
  stdout.writeln(resp);
}
