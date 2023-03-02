import 'package:flutter/material.dart';

import '../../../constants/app_style.dart';
import '../../../global_widget/index.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: Text("Email")),
        AppStyles.sizedBoxHeight5,
        Flexible(
          child: TextFieldLogin(
            hintText: "Nhập email",
            validator: (value) {},
          ),
        ),
        AppStyles.sizedBoxHeight10,
        Flexible(child: Text("Mật khẩu")),
        AppStyles.sizedBoxHeight5,
        Flexible(
          child: TextFieldPassword(
            hintText: "Nhập mật khẩu",
            secureText: isSecure,
            onTapSecure: () {
              setState(() {
                isSecure = !isSecure;
              });
            },
            validator: (value) {},
          ),
        ),
        AppStyles.sizedBoxHeight10,
        Flexible(child: Text("Xác nhận mật khẩu")),
        AppStyles.sizedBoxHeight5,
        Flexible(
          child: TextFieldPassword(
            hintText: "Nhập mật khẩu",
            secureText: isSecure,
            onTapSecure: () {
              setState(() {
                isSecure = !isSecure;
              });
            },
            validator: (value) {},
          ),
        ),
        AppStyles.sizedBoxHeight10,
        ButtonCustom(
          content: "Đăng nhập",
          onTap: () {
            print("!23213");
          },
        ),
      ],
    );
  }
}
