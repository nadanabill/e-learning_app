import 'package:e_learning/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
  int? maxLines;
  final Color? textColor;
  final void Function(String)? onChange;
  bool? isValid;

  DefaultTextFormFieldWidget({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.validator,
    this.obscureText,
    this.onFieldSubmitted,
    this.centerText,
    this.autoFocus = false,
    this.maxLines,
    this.textColor,
    this.onChange,
    this.isValid,
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
      onChanged: widget.onChange,
      keyboardType: widget.textInputType,
      textAlign: widget.centerText == null ? TextAlign.start : TextAlign.center,
      style: AppTextStyles.font16Regular.copyWith(
        color: widget.textColor ?? AppColors.black100,
        decorationColor: AppColors.primary100,
      ),
      maxLines: widget.maxLines ?? 1,
      autofocus: widget.autoFocus,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText ?? false,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        errorStyle: AppTextStyles.font14Regular.copyWith(
          color: Colors.red,
        ),
        contentPadding: const EdgeInsets.all(20),
        suffixIcon: widget.obscureText != null
            ? IconButton(
                icon: SvgPicture.asset(
                  widget.obscureText! ? AppSvgs.eye : AppSvgs.eyeSlash,
                  color: AppColors.black80,
                ),
                onPressed: () {
                  widget.obscureText = !widget.obscureText!;
                  setState(() {});
                },
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.isValid == null
                ? AppColors.primary100
                : widget.isValid!
                    ? Colors.green
                    : Colors.red,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.isValid == null
                ? AppColors.gray
                : widget.isValid!
                    ? Colors.green
                    : Colors.red,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.isValid == null
                ? AppColors.gray
                : widget.isValid!
                    ? Colors.green
                    : Colors.red,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
