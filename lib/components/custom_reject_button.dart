import 'package:flutter/material.dart';

class CustomRejectButton extends StatelessWidget {
  const CustomRejectButton({
    super.key,
    required this.title,
    required this.theme,
    required this.onTap,
  });

  final String title;
  final ThemeData theme;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: theme.indicatorColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
