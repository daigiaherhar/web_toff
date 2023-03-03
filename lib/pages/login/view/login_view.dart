import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_toff/constants/app_style.dart';

import '../../../constants/app_color.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_string.dart';
import '../../../global_widget/index.dart';
import '../../../routes/app_pages.dart';
import '../widgets/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(MediaQuery.of(context).viewInsets.horizontal);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBarAuthorityCustom(
        title: LoginString.title,
        contentAction: LoginString.connect,
        onTapAction: () {
          print("!2321");
        },
        onTapLogo: () {},
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(35),
        height: height * 0.8,
        child: Row(children: [
          if (MediaQuery.of(context).size.width > 1000)
            Expanded(
              flex: 4,
              child: BannerAuthorityWidget(),
            ),
          Expanded(flex: 2, child: EnterLogin()),
        ]),
      ),
    );
  }
}

class EnterLogin extends StatefulWidget {
  const EnterLogin({Key? key}) : super(key: key);

  @override
  State<EnterLogin> createState() => _EnterLoginState();
}

class _EnterLoginState extends State<EnterLogin> {
  /* 0: is login, 1: is signup, 3: is forgot*/
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.paddingAll15,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2),
            )
          ]),
      child: Form(
        child: Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: HeaderAuthorityWidget(
                title: "Chào mừng đến với TOFF Seller",
                content:
                    "Vui lòng nhập các thông tin sau để đăng nhập vào TOFF Seller",
              )),
              AppStyles.sizedBoxHeight10,
              Expanded(flex: 6, child: LoginWidget()),
              Expanded(
                  flex: 3,
                  child: BottomAuthorityWidget(
                    onTapNext: () =>
                        Navigator.of(context).pushNamed(Routes.SIGN_UP),
                  ))
            ]),
      ),
    );
  }
}
