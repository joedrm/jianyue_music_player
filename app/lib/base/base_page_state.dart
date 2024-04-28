import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/base/bloc/base_bloc.dart';
import 'package:app/base/bloc/common/common_bloc.dart';
import 'package:app/base/bloc/common/common_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:domain/domain.dart';

// 自定义的 State 基类
abstract class BasePageState<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> with LogMixin {
  // 导航器对象
  late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();

  // 入口的 widget 的 bloc，也是全局的 bloc，负责全局的状态刷新，如切换主题、语言等。
  late final AppBloc appBloc = GetIt.instance.get<AppBloc>();

  // 通用的 bloc，主要负责如处理异常、全局的loading的显示和隐藏等等
  late final CommonBloc commonBloc = GetIt.instance.get<CommonBloc>()
    ..navigator = navigator
    ..disposeBag = disposeBag
    ..appBloc = appBloc;

  // 返回当前的页面的 bloc 对象。同时将导航器、全局状态、
  // 通用的 bloc 等传给当前的页面的 bloc 对象
  late final B bloc = GetIt.instance.get<B>()
    ..navigator = navigator
    ..disposeBag = disposeBag
    ..appBloc = appBloc
    ..commonBloc = commonBloc;

  // 常见对象的销毁管理
  late final DisposeBag disposeBag = DisposeBag();

  bool get isAppWidget => false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // 将 bloc，commonBloc 注册到当前页面
        BlocProvider(create: (_) => bloc),
        BlocProvider(create: (_) => commonBloc),
      ],
      child: BlocListener<CommonBloc, CommonState>(
        // 监听全局是否有异常。
        listenWhen: (previous, current) =>
            (previous.appExceptionWrapper != current.appExceptionWrapper &&
                current.appExceptionWrapper != null),
        listener: (context, state) {},
        child: buildPageListeners(
          // 这里的 isAppWidget 的意思是当入口的widget，也就是 MyApp 加载完进入程序主页，
          // 在全局加上 Loading，根据需要来显示或隐藏
          child: isAppWidget
              ? buildPage(context)
              : Stack(
                  children: [
                    buildPage(context),
                    BlocBuilder<CommonBloc, CommonState>(
                      buildWhen: (previous, current) =>
                          previous.isLoading != current.isLoading,
                      builder: (context, state) {
                        return Visibility(
                          visible: state.isLoading,
                          child: buildPageLoading(),
                        );
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  // 页面监听器，后面会讲到。
  Widget buildPageListeners({required Widget child}) => child;

  // 全局的 loading
  Widget buildPageLoading() => const Center(
        child: CircularProgressIndicator(
          color: Color(0xFF333333),
          strokeWidth: 2,
        ),
      );

  // 子类重写改方法返回当前页面
  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    super.dispose();
    // 销毁常见对象，如StreamSubscription、StreamController、ChangeNotifier等
    disposeBag.dispose();
  }
}
