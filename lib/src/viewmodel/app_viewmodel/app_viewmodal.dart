import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class AppViewModel extends ChangeNotifier {
  // calculator numbers and operators
  final List<String> _buttonTexts = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    'C',
    '=',
    '+',
  ];

  // string containing the total of inputs and arithmatic operators
  String _expression = '';
  // string containing the result of the expression
  String _result = '';

  // when any button in the calculator is pressed
  void onButtonPressed(String buttonText) {
    if (buttonText == 'C') {
      _expression = '';
      _result = '';
    } else if (buttonText == '=') {
      _result = _evaluateExpression();
    } else {
      _expression += buttonText;
    }
    notifyListeners();
  }

  String _evaluateExpression() {
    try {
      String modifiedExpression = _expression.replaceAll('x', '*');
      if (modifiedExpression.isEmpty) {
        return '';
      }
      Parser p = Parser();
      Expression exp = p.parse(modifiedExpression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      notifyListeners();
      return eval.toString();
    } catch (e) {
      return 'Error: Invalid Expression';
    }
  }

  get expression => _expression;

  get buttonTexts => _buttonTexts;

  get result => _result;
}
