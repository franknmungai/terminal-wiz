import 'dart:io';
import 'package:terminal_wiz/src/prompter.dart';
import 'package:terminal_wiz/src/option.dart';

void main() {
  final prompter = new Prompter();
  stdout.writeln("Terminal Wiz");

  final options = [
    new Option(label: 'I want Red', value: '#FF1B2C'),
    new Option(label: 'I want Blue', value: '#27ADE9'),
    new Option(label: 'I want Green', value: '#83C880'),
  ];
  final resp = prompter.askMultiple('Choose a color', options);

  stdout.writeln(resp);

  final resp2 = prompter.askBinary('Do you like Dart?');
  stdout.writeln(resp2);
}
