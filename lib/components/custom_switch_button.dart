import 'package:flutter/material.dart';

class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton({
    super.key,
    required this.title,
    required this.theme,
    required this.selectedState,
    required this.onChanged,
  });
  final String title;
  final ThemeData theme;
  final bool selectedState;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyMedium,
          ),
          Switch(
            value: selectedState,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
