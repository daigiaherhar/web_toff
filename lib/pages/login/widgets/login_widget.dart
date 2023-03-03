import 'package:flutter/cupertino.dart';

import '../../../constants/app_style.dart';
import '../../../global_widget/index.dart';
import '../../../routes/app_pages.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
        ButtonCustom(
          content: "Đăng nhập",
          onTap: () => Navigator.of(context).pushNamed(Routes.INFO_STORE),
        ),
      ],
    );
  }
}
