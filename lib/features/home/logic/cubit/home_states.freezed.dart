// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) homeLoading,
    required TResult Function(HomeSuccess value) homeSuccess,
    required TResult Function(HomeError value) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? homeLoading,
    TResult? Function(HomeSuccess value)? homeSuccess,
    TResult? Function(HomeError value)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? homeLoading,
    TResult Function(HomeSuccess value)? homeSuccess,
    TResult Function(HomeError value)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) homeLoading,
    required TResult Function(HomeSuccess value) homeSuccess,
    required TResult Function(HomeError value) homeError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? homeLoading,
    TResult? Function(HomeSuccess value)? homeSuccess,
    TResult? Function(HomeError value)? homeError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? homeLoading,
    TResult Function(HomeSuccess value)? homeSuccess,
    TResult Function(HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<$Res> {
  factory _$$HomeLoadingImplCopyWith(
          _$HomeLoadingImpl value, $Res Function(_$HomeLoadingImpl) then) =
      __$$HomeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingImpl>
    implements _$$HomeLoadingImplCopyWith<$Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl _value, $Res Function(_$HomeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingImpl implements HomeLoading {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState.homeLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeError,
  }) {
    return homeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeError,
  }) {
    return homeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) homeLoading,
    required TResult Function(HomeSuccess value) homeSuccess,
    required TResult Function(HomeError value) homeError,
  }) {
    return homeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? homeLoading,
    TResult? Function(HomeSuccess value)? homeSuccess,
    TResult? Function(HomeError value)? homeError,
  }) {
    return homeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? homeLoading,
    TResult Function(HomeSuccess value)? homeSuccess,
    TResult Function(HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoadingImpl;
}

/// @nodoc
abstract class _$$HomeSuccessImplCopyWith<$Res> {
  factory _$$HomeSuccessImplCopyWith(
          _$HomeSuccessImpl value, $Res Function(_$HomeSuccessImpl) then) =
      __$$HomeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeResponse homeResponse});
}

/// @nodoc
class __$$HomeSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeSuccessImpl>
    implements _$$HomeSuccessImplCopyWith<$Res> {
  __$$HomeSuccessImplCopyWithImpl(
      _$HomeSuccessImpl _value, $Res Function(_$HomeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeResponse = null,
  }) {
    return _then(_$HomeSuccessImpl(
      null == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }
}

/// @nodoc

class _$HomeSuccessImpl implements HomeSuccess {
  const _$HomeSuccessImpl(this.homeResponse);

  @override
  final HomeResponse homeResponse;

  @override
  String toString() {
    return 'HomeState.homeSuccess(homeResponse: $homeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessImpl &&
            (identical(other.homeResponse, homeResponse) ||
                other.homeResponse == homeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      __$$HomeSuccessImplCopyWithImpl<_$HomeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeError,
  }) {
    return homeSuccess(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeError,
  }) {
    return homeSuccess?.call(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(homeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) homeLoading,
    required TResult Function(HomeSuccess value) homeSuccess,
    required TResult Function(HomeError value) homeError,
  }) {
    return homeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? homeLoading,
    TResult? Function(HomeSuccess value)? homeSuccess,
    TResult? Function(HomeError value)? homeError,
  }) {
    return homeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? homeLoading,
    TResult Function(HomeSuccess value)? homeSuccess,
    TResult Function(HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeSuccess implements HomeState {
  const factory HomeSuccess(final HomeResponse homeResponse) =
      _$HomeSuccessImpl;

  HomeResponse get homeResponse;
  @JsonKey(ignore: true)
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$HomeErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl implements HomeError {
  const _$HomeErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'HomeState.homeError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeError,
  }) {
    return homeError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeError,
  }) {
    return homeError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeLoading value) homeLoading,
    required TResult Function(HomeSuccess value) homeSuccess,
    required TResult Function(HomeError value) homeError,
  }) {
    return homeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeLoading value)? homeLoading,
    TResult? Function(HomeSuccess value)? homeSuccess,
    TResult? Function(HomeError value)? homeError,
  }) {
    return homeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeLoading value)? homeLoading,
    TResult Function(HomeSuccess value)? homeSuccess,
    TResult Function(HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError(final ApiErrorModel apiErrorModel) = _$HomeErrorImpl;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
