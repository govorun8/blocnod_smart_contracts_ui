import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.hint,
    required this.dropdownValues,
    required this.onChanged,
  });

  final String title;
  final String hint;
  final List<String> dropdownValues;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final globalKey = GlobalKey();
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
          onTap: () {
            showDropdownDialog(context, dropdownValues, theme, globalKey);
          },
          child: Container(
            key: globalKey,
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
              hint,
              style: theme.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> showDropdownDialog(
    BuildContext context,
    List<String> dropdownValues,
    ThemeData theme,
    GlobalKey key,
  ) async {
    final RenderBox renderBox =
        key.currentContext?.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final Offset position = renderBox.localToGlobal(Offset.zero);

    final String? selectedValue = await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'dropdown',
      useRootNavigator: false,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Stack(
          children: [
            Positioned(
              left: position.dx,
              top: position.dy - 10,
              width: size.width,
              height: 50 * dropdownValues.length.toDouble() * animation.value,
              child: DropdownDialogConstructor(
                theme: theme,
                dropdownValues: dropdownValues,
              ),
            ),
          ],
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return const SizedBox.shrink();
      },
    );
    onChanged(selectedValue);
  }
}

class DropdownDialogConstructor extends StatelessWidget {
  const DropdownDialogConstructor(
      {super.key, required this.dropdownValues, required this.theme});
  final List<String> dropdownValues;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: theme.primaryColor,
        ),
        borderRadius: BorderRadius.circular(10),
        color: theme.canvasColor,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: dropdownValues.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, dropdownValues[index]);
            },
            child: AbsorbPointer(
              child: SizedBox(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        dropdownValues[index],
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    const Spacer(),
                    index != dropdownValues.length - 1
                        ? Divider(
                            color: theme.primaryColor,
                            thickness: 0.3,
                            height: 0.3,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
