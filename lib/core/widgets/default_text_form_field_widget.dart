import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class DefaultTextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final void Function(String)? onFieldSubmitted;
  bool? obscureText;
  bool? centerText;
  bool autoFocus;

  DefaultTextFormFieldWidget({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.validator,
    this.obscureText,
    this.onFieldSubmitted,
    this.centerText,
    this.autoFocus = false,
  });

  @override
  State<DefaultTextFormFieldWidget> createState() =>
      _DefaultTextFormFieldWidgetState();
}

class _DefaultTextFormFieldWidgetState
    extends State<DefaultTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      textAlign: widget.centerText == null ? TextAlign.start : TextAlign.center,
      style: AppTextStyles.font16Regular.copyWith(
        color: AppColors.black100,
        decorationColor: AppColors.primary100,
      ),
      autofocus: widget.autoFocus,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText ?? false,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText != null
            ? IconButton(
                icon: Icon(
                  widget.obscureText!
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_rounded,
                  color: AppColors.black80,
                ),
                onPressed: () {
                  widget.obscureText = !widget.obscureText!;
                  setState(() {});
                },
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primary100),
          borderRadius: BorderRadius.circular(40),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
