import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TextFieldOTP extends StatelessWidget {
  const TextFieldOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      // controller: controller,
      maxLength: 1,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        counterText: '',
        hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
        contentPadding: EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white50),
            borderRadius: BorderRadius.circular(4)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary500),
            borderRadius: BorderRadius.circular(4)),
      ),
      style: TextStyle(
          color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    );
  }
}
