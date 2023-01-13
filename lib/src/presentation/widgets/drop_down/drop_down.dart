import 'package:flutter/material.dart';
import '../../configs/config.dart';

class MyDropdown<T> extends StatelessWidget {
  final String? hintText;
  final List<T> options;
  final T? value;
  final String Function(T)? getLabel;
  final ValueChanged<T?>? onChanged;

  const MyDropdown({
    Key? key,
    this.hintText,
    this.options = const [],
    this.value,
    this.getLabel,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            labelText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          // isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              value: value,
              onChanged: onChanged,
              items: options.map((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text(getLabel!(value)),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
