import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/common_view/popup/popup_button.dart';
import 'package:app/common_view/popup/popup_type.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    this.commonPopupType = PopupType.adaptive,
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
    Key? key,
  }) : super(key: key);

  const CommonDialog.android({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.android,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.ios({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.ios,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this(
          commonPopupType: PopupType.adaptive,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  final PopupType commonPopupType;
  final List<PopupButton> actions;
  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    switch (commonPopupType) {
      case PopupType.android:
        return _buildAndroidDialog();
      case PopupType.ios:
        return _buildIosDialog();
      case PopupType.adaptive:
        return Platform.isIOS ? _buildIosDialog() : _buildAndroidDialog();
    }
  }

  Widget _buildAndroidDialog() {
    return AlertDialog(
      actions: actions
          .map(
            (e) => TextButton(
              onPressed: e.onPressed?.function,
              child: Text(
                e.text ?? "",
                style: e.isDefault
                    ? _s14w400Secondary
                    : _s14w400Primary,
              ),
            ),
          )
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: _s14w400Primary,
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: _s14w400Primary,
            )
          : null,
    );
  }

  Widget _buildIosDialog() {
    return CupertinoAlertDialog(
      actions: actions
          .map((e) => CupertinoDialogAction(
                onPressed: e.onPressed?.function,
                child: Text(
                  e.text ?? "",
                  style: e.isDefault
                      ? _s14w400Secondary
                      : _s14w400Primary,
                ),
              ))
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: _s14w400Primary,
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: _s14w400Primary,
            )
          : null,
    );
  }

  TextStyle get _s14w400Primary => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
      );

  TextStyle get _s14w400Secondary => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF666666),
  );
}
