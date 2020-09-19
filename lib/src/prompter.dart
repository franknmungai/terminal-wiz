import 'option.dart';
import 'terminal.dart';

// creating a terminal woth the const keyword gives us the same oject when create several instances with the same types
final Terminal _terminal = const Terminal(); //_ makes a variable private

class Prompter {
  askMultiple(String prompt, List<Option> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();

    try {
      return options[int.parse(input)].value;
    } catch (e) {
      return askMultiple(prompt, options);
    }
  }

  askBinary(String prompt) {
    _terminal.printPrompt('$prompt (Y/n)');

    final input = _terminal.collectInput().toLowerCase();
    return input.contains('y');
  }
}
