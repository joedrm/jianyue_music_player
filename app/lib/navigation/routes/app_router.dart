// import 'package:app/ui/home/home_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
@LazySingleton()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        // AutoRoute(page: CompressImageRoute.page, path: "/compress-images"),
        // AutoRoute(page: GenerateIconRoute.page, path: "/generate-icon"),
        // AutoRoute(page: JsonToDartRoute.page, path: "/json-to-dart"),
        // AutoRoute(page: JsonFormatRoute.page, path: "/json-format"),
        // AutoRoute(page: JsonViewRoute.page, path: "/json-view"),
        // AutoRoute(page: CodeSnippetsRoute.page, path: "/code-snippets"),
      ];
}
