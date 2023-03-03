import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:web_toff/constants/app_images.dart';

import '../constants/app_color.dart';
import '../constants/app_style.dart';

class AppBarSellerCustom extends StatelessWidget with PreferredSizeWidget {
  AppBarSellerCustom({
    Key? key,
    this.onTapLogo,
    this.onTapAction,
    this.contentAction = "",
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0efault is 56.0

  final String contentAction;
  final onTapLogo;
  final onTapAction;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double icHeight = 24;
    final double icWidth = 24;
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
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(flex: 4,child: SearchBar()),
        Padding(
          padding: AppStyles.paddingHorizontal10,
          child: Image.asset(
            AppImages.icNotification,
            height: icHeight,
            width: icWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: VerticalDivider(
            thickness: 1,
            color: Color(0xffC8C8C8),
          ),
        ),
        Flexible(
          child: Padding(
            padding: AppStyles.paddingHorizontal5,
            child: AutoSizeText("Thanh Phương",minFontSize: 8),
          ),
        ),
        Flexible(
          child: Padding(
            padding: AppStyles.paddingHorizontal10,
            child: CircleAvatar(
                maxRadius: 18,
                minRadius: 18,
                child: Image.asset(
                  AppImages.icAvatar,
                )),
          ),
        ),
        Flexible(
          child: Padding(
            padding: AppStyles.paddingHorizontal10,
            child: Image.asset(
              AppImages.icFlagsVN,
              height: icHeight,
              width: icWidth,
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: AppStyles.paddingHorizontal10,
            child: Image.asset(
              AppImages.icMenu,
              height: icHeight,
              width: icWidth,
            ),
          ),
        ),
      ]),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double icHeight = 24;
    final double icWidth = 24;
    return SearchBarAnimation(
      textEditingController: TextEditingController(),
      isOriginalAnimation: true,
      enableKeyboardFocus: true,
      isSearchBoxOnRightSide: true,
      hintText: "Tìm kiếm",
      onExpansionComplete: () {
      },
      onCollapseComplete: () {
      },
      onPressButton: (isSearchBarOpens) {
      },

      trailingWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
      secondaryButtonWidget: const Icon(
        Icons.close,
        size: 20,
        color: Colors.black,
      ),
      buttonBorderColour: Colors.transparent,
      buttonWidget: Image.asset(
        AppImages.icSearchNormal,
        height: icHeight,
        width: icWidth,
      ),
    );
  }
}
