import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:app/common_view/popup/common_dialog.dart';
import 'package:app/common_view/popup/popup_button.dart';
import 'package:shared/shared.dart';
import '../base/base_popup_info_mapper.dart';

@LazySingleton(as: BasePopupInfoMapper)
class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appRouteInfo, AppNavigator navigator) {
    return appRouteInfo.when(
      confirmDialog: (message, onPressed) {
        return CommonDialog(
          actions: [
            PopupButton(
              text: "",
              onPressed: onPressed ?? Func0(() => navigator.pop()),
            ),
          ],
          message: message,
        );
      },
      errorWithRetryDialog: (message, onRetryPressed) {
        return CommonDialog(
          actions: [
            PopupButton(
              text: "",
              onPressed: Func0(() => navigator.pop()),
            ),
            PopupButton(
              text: "",
              onPressed: onRetryPressed ?? Func0(() => navigator.pop()),
              isDefault: true,
            ),
          ],
          message: message,
        );
      },
      requiredLoginDialog: () => CommonDialog.adaptive(
        title: "",
        message: "",
        actions: [
          PopupButton(
            text: "",
            onPressed: Func0(() => navigator.pop()),
          ),
          PopupButton(
            text: "",
            onPressed: Func0(() async {

            }),
          ),
        ],
      ),
    );
  }
}
