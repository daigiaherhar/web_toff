import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_toff/constants/app_style.dart';

import '../constants/app_images.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double icHeight = 24;
    final double icWidth = 24;
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Image.asset(AppImages.logo),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerAdapter(
              icon: AppImages.icFlagsVN,
              text: "Tổng quan",
              function: () {},
            ),
            DrawerAdapter(
              text: "controller.lang['home']",
              function: () {},
            ),
            DrawerAdapter(
              text: "controller.lang['home']",
              function: () {},
            ),
            DrawerExpandAdapter(
              title: "Đơn hàng",
              icon: AppImages.icFlagsVN,
            )
          ],
        ),
      ),
    );
  }
}

class DrawerAdapter extends StatelessWidget {
  const DrawerAdapter(
      {Key? key, this.text, this.function, this.padding, this.icon})
      : super(key: key);
  final String? text;
  final function;
  final EdgeInsets? padding;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: AppColors.orange,
      margin: AppStyles.paddingAll5,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: function,
          child: Padding(
            padding: AppStyles.paddingAll5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon != null && icon != ""
                    ? Image.asset(
                        icon!,
                        width: 24,
                        height: 24,
                      )
                    : SizedBox(),
                AppStyles.sizedBoxWidth10,
                Flexible(
                  child: AutoSizeText(
                    text ?? "",
                    minFontSize: 10,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerExpandAdapter extends StatefulWidget {
  const DrawerExpandAdapter(
      {Key? key, this.function, this.icon, this.title, this.isShow = true})
      : super(key: key);
  final function;
  final String? icon;
  final String? title;
  final bool isShow;

  @override
  State<DrawerExpandAdapter> createState() => _DrawerExpandAdapterState();
}

class _DrawerExpandAdapterState extends State<DrawerExpandAdapter> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    print("isShow");
    print(isShow);
    return Container(
      width: double.infinity,
      // color: AppColors.orange,
      margin: AppStyles.paddingAll5,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              isShow = !isShow;
              print(isShow);
            });
          },
          child: Padding(
            padding: AppStyles.paddingAll5,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      widget.icon != null && widget.icon != ""
                          ? Image.asset(
                              widget.icon!,
                              width: 24,
                              height: 24,
                            )
                          : SizedBox(),
                      AppStyles.sizedBoxWidth10,
                      AutoSizeText(
                        widget.title ?? "",
                        minFontSize: 10,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, anim) => RotationTransition(
                            turns: child.key == ValueKey('icon1')
                                ? Tween<double>(begin: 1, end: 0.75)
                                    .animate(anim)
                                : Tween<double>(begin: 0.75, end: 1)
                                    .animate(anim),
                            child: FadeTransition(opacity: anim, child: child),
                          ),
                      child: isShow
                          ? Icon(
                              Icons.keyboard_arrow_down_sharp,
                              key: const ValueKey('icon1'),
                              size: 24,
                            )
                          : Icon(
                              Icons.arrow_back,
                              key: const ValueKey('icon2'),
                              size: 24,
                            ))
                ]),
          ),
        ),
      ),
    );
  }
}
