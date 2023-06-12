import 'package:flutter/services.dart';
import 'package:angra_projects_ui/commons/enums/angra_mask_enum.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AngraMaskHelpers {
  // Use when you need to add more than one Formatter
  static List<TextInputFormatter> textInputFormatters(List<AngraMaskEnum> masks,
      [String? initialText]) {
    List<TextInputFormatter> formatters = [];

    for (var mask in masks) {
      final TextInputFormatter findMask =
          getTextInputFormatter(mask, initialText);
      formatters.add(findMask);
    }

    return formatters;
  }

  //Put here your Formatter
  static TextInputFormatter getTextInputFormatter(AngraMaskEnum mask,
      [String? initialText]) {
    switch (mask) {
      case AngraMaskEnum.zipcode:
        return MaskTextInputFormatter(
            mask: '#####-###',
            filter: {'#': RegExp(r'[0-9]')},
            initialText: initialText);
      case AngraMaskEnum.phone:
        return MaskTextInputFormatter(
            mask: '(##) #####-####',
            filter: {'#': RegExp(r'[0-9]')},
            initialText: initialText);
      case AngraMaskEnum.date:
        return MaskTextInputFormatter(
            mask: '##/##/####',
            filter: {'#': RegExp(r'[0-9]')},
            initialText: initialText);
    }
  }
}
