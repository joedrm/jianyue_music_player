import 'package:app/navigation/observer/app_navigator_observer.dart';
import 'package:app/navigation/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/app/bloc/app_event.dart';
import 'package:app/app/bloc/app_state.dart';
import 'package:app/base/base_page_state.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends BasePageState<MyApp, AppBloc> {
  // 获取路由对象
  final _appRouter = GetIt.instance.get<AppRouter>();

  @override
  bool get isAppWidget => true;

  @override
  void initState() {
    super.initState();
    // 添加初始化 event 对象
    bloc.add(const AppInitEvent());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget buildPage(BuildContext context) {
    return ScreenUtilInit(
      // 设置当前 App 的设计尺寸。
      designSize: const Size(DeviceWindowConstants.designWebWidth,
          DeviceWindowConstants.designWebHeight),
      builder: (context, _) => BlocBuilder<AppBloc, AppState>(
        // 当语言或者主题发生变化时重绘整个 App
        buildWhen: (previous, current) =>
            previous.isDarkTheme != current.isDarkTheme ||
            previous.languageCode != current.languageCode,
        builder: (context, state) {
          return MaterialApp.router(
            useInheritedMediaQuery: true,
            builder: (context, child) {
              final MediaQueryData data = MediaQuery.of(context);
              return MediaQuery(
                // 固定文本的缩放，使文本大小保持一致
                data: data.copyWith(textScaleFactor: 1.0),
                child: child ?? const SizedBox.shrink(),
              );
            },
            // 设置路由委托对象，负责管理 App 的路由状态
            routerDelegate: _appRouter.delegate(
              deepLinkBuilder: (deepLink) {
                return DeepLink.defaultPath;
              },
              // 设置路由监听器。
              navigatorObservers: () => [AppNavigatorObserver()],
            ),
            // 路由解析器。
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: "简悦",
            themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
