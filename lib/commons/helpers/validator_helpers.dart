import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show FormFieldValidator;

class AngraValidatorFieldHelpers {
  //Use when you need to add more than one Validator
  static FormFieldValidator<String> multiple(
      List<FormFieldValidator<String>> v) {
    return (value) {
      for (final validator in v) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }

// Required Validator
  static FormFieldValidator required(String message) {
    return (value) {
      if (value?.isEmpty ?? true) return message;
      return null;
    };
  }

  // Email Validator
  static FormFieldValidator<String> email(String message) {
    return (value) {
      if (value?.isEmpty ?? true) return null;
      final emailRegex =
          RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
      if (emailRegex.hasMatch(value!)) {
        return null;
      }
      return message;
    };
  }

  //ZipCode Validator
  static FormFieldValidator<String> zipCode(String message) {
    return (v) {
      if (v?.isEmpty ?? true) return null;
      final cepRegex = RegExp(r'^[0-9]{5}-[0-9]{3}$');
      if (cepRegex.hasMatch(v!)) return null;
      return message;
    };
  }
}
