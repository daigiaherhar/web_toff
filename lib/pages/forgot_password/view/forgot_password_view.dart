import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_toff/constants/app_style.dart';
import 'package:web_toff/pages/signup/widgets/signup_widget.dart';

import '../../../constants/app_color.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_string.dart';
import '../../../global_widget/index.dart';
import '../../../routes/app_pages.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarAuthorityCustom(
        title: LoginString.title,
        contentAction: LoginString.connect,
        onTapAction: () {
          print("!2321");
        },
        onTapLogo: () {},
      ),
      // backgroundColor: AppColors.white50,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(35),
        height: height * 0.8,
        child: Row( children: [
          Expanded(
            flex: 4,
            child: BannerAuthorityWidget(),
          ),
          Expanded(flex: 2, child: EnterForgetPassword()),
        ]),
      ),
    );
  }
}

class EnterForgetPassword extends StatefulWidget {
  const EnterForgetPassword({Key? key}) : super(key: key);

  @override
  State<EnterForgetPassword> createState() => _EnterForgetPasswordState();
}

class _EnterForgetPasswordState extends State<EnterForgetPassword> {
  /* 0: is login, 1: is signup, 3: is forgot*/
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      // height: 100,
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
                title: "Bạn quên mật khẩu à, đừng lo lắng",
                content: "Hãy nhập thông tin dưới đây, chúng tôi sẽ giúp bạn",
              )),
              AppStyles.sizedBoxHeight10,
              Expanded(flex: 7, child: EnterEmail()),
              ButtonCustom(
                content: "Gửi mã xác thực",
                onTap: () => Navigator.of(context).pushNamed(Routes.FORGOT_OTP),
              ),
              SizedBox(
                height: height * 0.05,
              )
            ]),
      ),
    );
  }
}

class EnterEmail extends StatelessWidget {
  const EnterEmail({Key? key}) : super(key: key);

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
      ],
    );
  }
}
