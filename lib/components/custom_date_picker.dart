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

  final DateTimeRange choosedDateTime;
  final void Function(DateTimeRange? selectedDate) onChangedDate;
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
            pickDateRange(context);
          },
          child: Container(
            height: 50,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '${DateFormat('dd-MM-yyyy').format(choosedDateTime.start).toString()}  -  ${DateFormat('dd-MM-yyyy').format(choosedDateTime.end).toString()}',
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }

  Future pickDateRange(
    BuildContext context,
  ) async {
    DateTimeRange dateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(days: 30)),
    );
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(2023),
      lastDate: DateTime(2030),
    );
    onChangedDate(newDateRange);
  }
}
