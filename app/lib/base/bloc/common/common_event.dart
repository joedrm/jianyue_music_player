import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app/base/bloc/base_bloc_event.dart';
import 'package:shared/shared.dart';


part 'common_event.freezed.dart';

abstract class CommonEvent extends BaseBlocEvent {
  const CommonEvent();
}

// @freezed
// class CommonInitEvent extends CommonEvent with _$CommonInitEvent {
//   const factory CommonInitEvent() = _CommonInitEvent;
// }

@freezed
class ExceptionEmitted extends CommonEvent with _$ExceptionEmitted {
  const factory ExceptionEmitted({
    required AppExceptionWrapper appExceptionWrapper,
  }) = _ExceptionEmitted;
}

@freezed
class LoadingVisibilityEmitted extends CommonEvent with _$LoadingVisibilityEmitted {
  const factory LoadingVisibilityEmitted({
    required bool isLoading,
  }) = _LoadingVisibilityEmitted;
}


@freezed
class AlertVisibilityEmitted extends CommonEvent with _$AlertVisibilityEmitted {
  const factory AlertVisibilityEmitted({
    String? msg,
    String? title,
    String? commitBtnTitle,
    Function? sureClicked,
    required bool isShowAlert,
  }) = _AlertVisibilityEmitted;
}

// @freezed
// class UsbChannelChanged extends CommonEvent with _$UsbChannelChanged {
//   const factory UsbChannelChanged() = _UsbChannelChanged;
// }


@freezed
class ForceLogoutButtonPressed extends CommonEvent with _$ForceLogoutButtonPressed {
  const factory ForceLogoutButtonPressed() = _ForceLogoutButtonPressed;
}

