import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AngraTextInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  const AngraTextInput(
      {super.key,
      this.controller,
      this.validator,
      this.inputFormatters,
      this.keyboardType});

  @override
  State<AngraTextInput> createState() => _AngraTextInputState();
}

class _AngraTextInputState extends State<AngraTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        )));
  }
}
