import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.onChanged,
    required this.title,
    required this.hint,
    this.text,
  });

  final void Function(String) onChanged;
  final String title;
  final String hint;
  final String? text;

  @override
  State<CustomTextField> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController textController;
  final FocusNode focusNode = FocusNode();
  bool isFieldSelected = false;

  @override
  void initState() {
    textController = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          child: TextField(
            controller: textController,
            focusNode: focusNode,
            onChanged: widget.onChanged,
            style: theme.textTheme.bodyMedium,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 5, left: 10),
              hintText: widget.hint,
              hintStyle: theme.textTheme.bodyMedium,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: theme.primaryColor,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: theme.dividerColor,
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
