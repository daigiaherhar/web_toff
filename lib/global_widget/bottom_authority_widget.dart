import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/app_images.dart';
import '../constants/app_style.dart';
import '../routes/app_pages.dart';

class BottomAuthorityWidget extends StatelessWidget {
  const BottomAuthorityWidget({Key? key, this.onTapNext}) : super(key: key);
  final onTapNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child:
                Center(child: InkWell(onTap: onTapNext, child: Text("Hoặc")))),
        AppStyles.sizedBoxHeight10,
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          child: IntrinsicHeight(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.s,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: IconText(
                    onTap: () {
                      print("!2321");
                    },
                    image: AppImages.icGoogleOriginal,
                    content: "Google",
                  ),
                ),
                AppStyles.sizedBoxWidth,
                Expanded(
                  child: IconText(
                    onTap: () {},
                    image: AppImages.icFacebookOriginal,
                    content: "Facebook",
                  ),
                ),
              ],
            ),
          ),
        ),
        AppStyles.sizedBoxHeight10,
        Expanded(
          child: AutoSizeText.rich(
            TextSpan(
                style: TextStyle(
                    color: Color(0xff737373),
                    fontSize: 15,
                    overflow: TextOverflow.visible),
                children: [
                  TextSpan(
                      text:
                          "Việc tạo/sử dụng tài khoản đồng nghĩa với việc bạn đã đồng ý với "),
                  TextSpan(
                    text: "Điều khoản sử dụng",
                    style: TextStyle(color: AppColors.primary500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('aaaa'),
                  ),
                  TextSpan(text: " và "),
                  TextSpan(
                    text: "Chính sách bảo mật",
                    style: TextStyle(color: AppColors.primary500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('bbbb'),
                  ),
                  TextSpan(text: " của chúng tôi"),
                ]),
            maxFontSize: 12,
            minFontSize: 8,
          ),
        )
      ],
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({Key? key, required this.image, this.content = "", this.onTap})
      : super(key: key);
  final String image;
  final String content;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppStyles.paddingAll5,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffDDDDDD), width:1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 24, width: 24),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: AutoSizeText(
              content,
              minFontSize: 10,
              maxFontSize: 14,
            ))
          ],
        ),
      ),
    );
  }
}