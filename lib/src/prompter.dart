import 'option.dart';
import 'terminal.dart';

// creating a terminal with the const keyword gives us the same object when we create several instances with the same class
final Terminal _terminal = const Terminal(); //_ makes a variable private

class Prompter {
  String _ask(String prompt, List<Option> options) {
    _terminal.clear();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    return _terminal.collectInput();
  }

  askMultiple(String prompt, List<Option> options) {
    final input = _ask(prompt, options);

    try {
      return options[int.parse(input)].value;
    } catch (e) {
      return askMultiple(prompt, options);
    }
  }

  bool askBinary(String prompt) {
    final input = _ask('$prompt (Y/n)', []).toLowerCase();
    return input.contains('y');
  }
}
