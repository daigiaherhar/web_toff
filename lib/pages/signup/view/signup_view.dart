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

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AuthorityAppBarCustom(
        title: LoginString.title,
        contentAction: LoginString.connect,
        onTapAction: () {
          print("!2321");
        },
        onTapLogo: () {},
      ),
      backgroundColor: AppColors.white50,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(35),
        height: height * 0.8,
        child: IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              flex: 4,
              child: BannerAuthorityWidget(),
            ),
            Expanded(flex: 2, child: EnterSignup()),
          ]),
        ),
      ),
    );
  }
}

class EnterSignup extends StatefulWidget {
  const EnterSignup({Key? key}) : super(key: key);

  @override
  State<EnterSignup> createState() => _EnterSignupState();
}

class _EnterSignupState extends State<EnterSignup> {
  /* 0: is login, 1: is signup, 3: is forgot*/
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: AppStyles.paddingAll15,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
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
              Expanded(child: HeaderAuthorityWidget()),
              AppStyles.sizedBoxHeight10,
              Expanded(flex: 7, child: SignupWidget()),
              Expanded(
                  flex: 3,
                  child: BottomAuthorityWidget(
                    onTapNext: () =>
                        Navigator.of(context).pushNamed(Routes.LOGIN),
                  ))
            ]),
      ),
    );
  }
}
