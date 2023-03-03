import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_toff/constants/app_images.dart';

import '../constants/app_color.dart';
import '../constants/app_style.dart';

class AppBarAuthorityCustom extends StatelessWidget with PreferredSizeWidget {
  AppBarAuthorityCustom({
    Key? key,
    this.title = "",
    this.onTapLogo,
    this.onTapAction,
    this.contentAction = "",
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0efault is 56.0

  final String title;
  final String contentAction;
  final onTapLogo;
  final onTapAction;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: preferredSize.height,
      padding: AppStyles.paddingHorizontal,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 1,
          offset: Offset(0, 2),
        )
      ]),
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            child: GestureDetector(
                onTap: onTapLogo,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(AppImages.logo)))),
        Expanded(
            flex: 6,
            child: Center(
              child: Text(title,
                  style: TextStyle(color: AppColors.primary500, fontSize: 20)),
            )),
        Expanded(
            child: InkWell(
          onTap: onTapAction,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                  child: AutoSizeText(
                contentAction,
                minFontSize: 10,
                textAlign: TextAlign.center,
              )),
              SizedBox(
                width: 2,
              ),
              Image.asset(
                AppImages.icFacebook,
                width: 20,
              )
            ],
          ),
        )),
      ]),
    );
  }
}
