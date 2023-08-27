import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.textFocusNode,
    required this.onChanged,
  });

  final TextEditingController textEditingController;
  final FocusNode textFocusNode;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return TextField(
      controller: textEditingController,
      focusNode: textFocusNode,
      onChanged: onChanged,
      style: theme.textTheme.bodyMedium,
    );
  }
}
