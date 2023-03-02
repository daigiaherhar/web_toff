import 'package:flutter/material.dart';

import '../constants/app_style.dart';

class HeaderAuthorityWidget extends StatelessWidget {
  const HeaderAuthorityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            "Chào mừng đến với TOFF Seller",
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        AppStyles.sizedBoxHeight10,
        Flexible(
          child: Text(
            "Vui lòng nhập các thông tin sau để đăng nhập vào TOFF Seller",
            style: TextStyle(color: Color(0xff737373)),
          ),
        ),
      ],
    );
  }
}
