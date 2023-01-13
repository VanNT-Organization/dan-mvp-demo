import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../configs/config.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    this.title,
    this.hintText,
    this.inputType,
    this.controller,
    this.maxLength,
    this.onSubmitted,
    this.initialValue,
    this.onSaved,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onChanged,
    this.errorText,
    this.radius = 10,
    this.centerTitle = false,
    this.prefixIcon,
    this.width,
    this.height,
    this.readOnly = false,
    this.onTap,
    this.maxLines = 1,
    this.contentPadding,
    this.suffixIcon,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
  }) : super(key: key);

  final String? title;
  final String? hintText;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final int? maxLength;
  final Function? onSubmitted;
  final String? initialValue;
  final FormFieldSetter<String>? onSaved;
  final AutovalidateMode? autovalidateMode;
  final Function(String)? onChanged;
  final String? errorText;
  final double radius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? centerTitle;
  final double? width;
  final double? height;
  final bool readOnly;
  final VoidCallback? onTap;
  final int maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: TextFormField(
        textAlign: textAlign,
        maxLines: maxLines,
        initialValue: initialValue,
        key: key,
        keyboardType: inputType,
        obscuringCharacter: '*',
        autocorrect: false,
        readOnly: readOnly,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        decoration: const InputDecoration()
            .applyDefaults(AppTheme.textFormField(radius))
            .copyWith(
              floatingLabelAlignment:
                  centerTitle == true ? FloatingLabelAlignment.center : null,
              labelText: title,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hintText,
              prefixIcon: prefixIcon,
              contentPadding: contentPadding,
              suffixIcon: suffixIcon,
            ),
        onSaved: (_) => onSaved,
        controller: controller,
        autovalidateMode: autovalidateMode,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
