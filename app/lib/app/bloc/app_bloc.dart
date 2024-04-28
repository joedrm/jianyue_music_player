import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app/bloc/app_event.dart';
import 'package:app/app/bloc/app_state.dart';
import 'package:app/base/bloc/base_bloc.dart';

@LazySingleton()
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppThemeChanged>(
      _onAppThemeChanged,
      transformer: throttleTime(),
    );

    on<AppLanguageChanged>(
      _onAppLanguageChanged,
      transformer: log(),
    );

    on<AppInitEvent>(_onAppInitEvent, transformer: log());
  }

  // app 初始化 event
  FutureOr<void> _onAppInitEvent(
      AppInitEvent event, Emitter<AppState> emit) async {}

  // 主题改变的 event
  Future<void> _onAppThemeChanged(
      AppThemeChanged event, Emitter<AppState> emit) async {}

  // 语言切换的 event
  Future<void> _onAppLanguageChanged(
      AppLanguageChanged event, Emitter<AppState> emit) async {}
}
