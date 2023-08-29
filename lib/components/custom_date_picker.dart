import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    super.key,
    required this.title,
    required this.choosedDateTime,
    required this.onChangedDate,
    required this.translate,
    required this.theme,
  });
  final String title;

  final DateTime choosedDateTime;
  final void Function(DateTime? selectedDate) onChangedDate;
  final S translate;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTapUp: (details) {
            pickDate(context, choosedDateTime);
          },
          child: Container(
            height: 50,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: theme.dividerColor,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              DateFormat('dd-MM-yyyy').format(choosedDateTime).toString(),
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }

  Future pickDate(
    BuildContext context,
    DateTime choosedDateTime,
  ) async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: choosedDateTime,
      firstDate: DateTime(2023),
      lastDate: DateTime(2030),
    );
    onChangedDate(newDate);
  }
}
