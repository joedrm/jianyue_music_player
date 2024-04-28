// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app/bloc/app_bloc.dart' as _i3;
import 'package:app/base/bloc/common/common_bloc.dart' as _i9;
import 'package:app/navigation/app_navigator_impl.dart' as _i12;
import 'package:app/navigation/base/base_popup_info_mapper.dart' as _i5;
import 'package:app/navigation/base/base_route_info_mapper.dart' as _i7;
import 'package:app/navigation/mapper/app_popup_info_mapper.dart' as _i6;
import 'package:app/navigation/mapper/app_route_info_mapper.dart' as _i8;
import 'package:app/navigation/middleware/route_guard.dart' as _i10;
import 'package:app/navigation/routes/app_router.dart' as _i4;
import 'package:domain/domain.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.BasePopupInfoMapper>(() => _i6.AppPopupInfoMapper());
    gh.lazySingleton<_i7.BaseRouteInfoMapper>(() => _i8.AppRouteInfoMapper());
    gh.factory<_i9.CommonBloc>(() => _i9.CommonBloc());
    gh.factory<_i10.RouteGuard>(() => _i10.RouteGuard());
    gh.lazySingleton<_i11.AppNavigator>(() => _i12.AppNavigatorImpl(
          gh<_i4.AppRouter>(),
          gh<_i5.BasePopupInfoMapper>(),
          gh<_i7.BaseRouteInfoMapper>(),
        ));
    return this;
  }
}
