import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/app_style.dart';

class HeaderAuthorityWidget extends StatelessWidget {
  const HeaderAuthorityWidget({Key? key, this.title = "", this.content = ""})
      : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: AutoSizeText(
            title,
            maxFontSize: 20,
            minFontSize: 14,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        AppStyles.sizedBoxHeight10,
        Flexible(
          child: AutoSizeText(
            content,
            maxFontSize: 14,
            minFontSize: 10,
            style: TextStyle(color: Color(0xff737373)),
          ),
        ),
      ],
    );
  }
}
