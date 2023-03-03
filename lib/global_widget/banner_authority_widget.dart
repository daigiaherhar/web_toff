import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

import '../constants/app_color.dart';
import '../constants/app_images.dart';
import '../constants/app_string.dart';

class BannerAuthorityWidget extends StatelessWidget {
  const BannerAuthorityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        AutoSizeText("Giải pháp bán hàng cho sự tăng trưởng",
            maxFontSize: 34,
            minFontSize: 14,
            style: TextStyle(
              fontSize: 34,
                // color: AppColors.primary500,
                fontWeight: FontWeight.bold)),
        Expanded(
            flex: 12,
            child: Image.asset(
              AppImages.bgBannerLogin,
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}