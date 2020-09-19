import 'package:terminal_wiz/src/terminal.dart';

void main() {
  var terminal = new Terminal();
  terminal.clear();
  print("Terminal wiz");
  terminal.printPrompt("Type something");

  var input = terminal.collectInput();
  print("You just entered $input");
}
