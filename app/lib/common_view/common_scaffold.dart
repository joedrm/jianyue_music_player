import 'package:flutter/material.dart';
import 'package:app/common_view/shimmer/shimmer.dart';
import 'package:shared/shared.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.drawer,
    this.backgroundColor,
    this.hideKeyboardWhenTouchOutside = false,
    Key? key,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final bool hideKeyboardWhenTouchOutside;

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      backgroundColor: backgroundColor,
      body: Shimmer(child: body),
      appBar: appBar,
      drawer: drawer,
      resizeToAvoidBottomInset: false,
      floatingActionButton: floatingActionButton,
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtils.hideKeyboard(context),
            onPanDown: (_) => ViewUtils.hideKeyboard(context),
            child: scaffold,
          )
        : scaffold;
  }
}
