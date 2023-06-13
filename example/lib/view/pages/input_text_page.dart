import 'package:angra_projects_ui/angra_projects_ui.dart';
import 'package:angra_projects_ui/commons/helpers/mask_helpers.dart';
import 'package:angra_projects_ui/commons/helpers/validator_helpers.dart';
import 'package:example/doc/documentation_page.dart';
import 'package:flutter/material.dart';

class InputTextPage extends StatefulWidget {
  const InputTextPage({super.key});

  @override
  State<InputTextPage> createState() => _InputTextPageState();
}

class _InputTextPageState extends State<InputTextPage> implements BoxScreen {
  final _component = AngraTextInput(
    controller: TextEditingController(),
    validator: AngraValidatorFieldHelpers.required("Campo Obrigatório"),
    inputFormatters: AngraMaskHelpers.textInputFormatters([AngraMaskEnum.date]),
    keyboardType: TextInputType.number,
  );

  @override
  Map<String, dynamic> paramsToMap() {
    return {
      'controller': _component.controller,
      'validator': _component.validator,
      'inputFormatters': _component.inputFormatters,
      'keyboardType': _component.keyboardType
    };
  }

  @override
  Widget build(BuildContext context) {
    return DocumentationPage(
      component: _component,
      paramsToMap: paramsToMap,
    );
  }
}
