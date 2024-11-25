import 'package:flutter/services.dart';

String convertEnglishToPersian(String input) {
  const Map<String, String> englishToPersian = {
    '0': '۰',
    '1': '۱',
    '2': '۲',
    '3': '۳',
    '4': '۴',
    '5': '۵',
    '6': '۶',
    '7': '۷',
    '8': '۸',
    '9': '۹',
  };

  return input.split('').map((char) {
    return englishToPersian[char] ?? char;
  }).join('');
}



class PersianNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;

    final Map<String, String> persianNumbers = {
      '0': '۰', '1': '۱', '2': '۲', '3': '۳', '4': '۴',
      '5': '۵', '6': '۶', '7': '۷', '8': '۸', '9': '۹'
    };

    newText = newText.split('').map((char) {
      return persianNumbers[char] ?? char;  
    }).join('');

    return TextEditingValue(
      text: newText,
      selection: newValue.selection
    );
  }
}