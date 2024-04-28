import 'dart:async';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/base/bloc/base_bloc_event.dart';
import 'package:app/base/bloc/base_bloc_state.dart';
import 'package:app/base/bloc/common/common_bloc.dart';
import 'package:app/base/bloc/common/common_event.dart';
import 'package:app/base/bloc/mixin/event_transformer_mixin.dart';
import 'package:app/base/exception_handler/exception_handler.dart';
import 'package:shared/shared.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with EventTransformerMixin, LogMixin {
  BaseBloc(S initialState) : super(initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  // 构造方法中传一个泛型为S类型的对象
  BaseBlocDelegate(S initialState) : super(initialState);
  // 导航器，在 base_page_state 赋值其子类
  late final AppNavigator navigator;
  // 全局状态管理对象
  late final AppBloc appBloc;
  // 常见对象销毁管理器，在 base_page_state 赋值其子类
  late final DisposeBag disposeBag;
  // 通用的状态管理对象，在 base_page_state 赋值其子类
  late final CommonBloc _commonBloc;

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc =>
      this is CommonBloc ? this as CommonBloc : _commonBloc;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      Log.e('Cannot add new event $event because $runtimeType was closed');
    }
  }

  // 添加异常对象，会触发 base_page_state 中异常监听器来处理异常。
  Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
    commonBloc.add(ExceptionEmitted(
      appExceptionWrapper: appExceptionWrapper,
    ));
    return appExceptionWrapper.exceptionCompleter?.future;
  }

  // loading 显示
  void showLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: true));
  }

  // loading 隐藏
  void hideLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: false));
  }
}
