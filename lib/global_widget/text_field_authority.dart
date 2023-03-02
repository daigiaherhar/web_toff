import 'package:flutter/material.dart';
import 'package:web_toff/constants/app_color.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin(
      {Key? key,
      this.hintText,
      this.controller,
      this.inputType,
      this.inputAction,
      this.validator,
      this.onChangeFunction,
      this.sizeText,
      this.alignText,
      this.maxLength,
      this.focusNode,
      this.colorOutline,
      this.fontWeight,
      this.maxLine,
      this.obscureText,
      this.isCounterText = false,
      this.inputFormatCustom,
      this.sizeCounterText = 10,
      this.minLine,
      this.isEnabled = true,
      this.contentPadding,
      this.borderRadius,
      this.prefixIcon,
      this.colorBorder})
      : super(key: key);

  final String? hintText;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final controller;
  final String? Function(String?)? validator;
  final Function(String?)? onChangeFunction;
  final double? sizeText;
  final alignText;
  final int? maxLength;
  final prefixIcon;
  final FocusNode? focusNode;
  final colorOutline;
  final fontWeight;
  final int? maxLine;
  final int? minLine;
  final bool? obscureText;
  final bool isCounterText;
  final inputFormatCustom;
  final double sizeCounterText;
  final isEnabled;
  final EdgeInsets? contentPadding;
  final double? borderRadius;
  final colorBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        counterText: isCounterText ? null : '',
        counterStyle: TextStyle(fontSize: this.sizeCounterText),
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        hintStyle: TextStyle(color: Color(0xff737373)),
        contentPadding: contentPadding ?? EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white50),
            borderRadius: BorderRadius.circular(borderRadius ?? 4)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorOutline ?? Colors.orange),
            borderRadius: BorderRadius.circular(borderRadius ?? 4)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(borderRadius ?? 4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(borderRadius ?? 4)),
      ),
      style: TextStyle(
          color: Colors.black,
          fontSize: sizeText ?? 16,
          fontWeight: fontWeight ?? FontWeight.normal),
      controller: controller,
      validator: validator ?? null,
      textAlign: alignText ?? TextAlign.start,
      maxLines: maxLine ?? null,
      minLines: minLine ?? null,
      keyboardType: inputType,
      textInputAction: inputAction,
      onChanged: onChangeFunction,
      maxLength: maxLength ?? null,
      focusNode: focusNode,
      autofocus: false,
      obscureText: obscureText ?? false,
      enabled: isEnabled,
    );
  }
}

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword(
      {Key? key,
      required this.hintText,
      this.controller,
      this.inputAction,
      this.onChangeFunction,
      required this.secureText,
      this.onTapSecure,
      this.validator})
      : super(key: key);
  final String? hintText;
  final TextInputAction? inputAction;
  final controller;
  final String? Function(String?)? validator;
  final Function(String)? onChangeFunction;
  final bool secureText;
  final onTapSecure;

  @override
  _TextFieldPasswordState createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: Colors.white,
        filled: true,
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: widget.onTapSecure,
            child: Icon(
              !widget.secureText
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 15,
            ),
          ),
        ),
        hintStyle: TextStyle(color: Color(0xff737373)),
        contentPadding: EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white50),
            borderRadius: BorderRadius.circular(4)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(4)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4)),
      ),
      style: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
      controller: widget.controller,
      maxLines: 1,
      obscureText: widget.secureText,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: widget.inputAction,
      onChanged: widget.onChangeFunction,
    );
  }
}
