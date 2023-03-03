import 'package:flutter/material.dart';
import 'package:web_toff/constants/app_color.dart';

import '../constants/app_style.dart';

class ButtonCustom extends StatelessWidget {
  ButtonCustom({Key? key, this.content = "", this.onTap}) : super(key: key);
  final String content;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.primary500, borderRadius: BorderRadius.circular(8)),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: AppStyles.paddingAll15,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  content,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
