// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_flow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DialogFlowEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) submitQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? submitQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? submitQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitQuery value) submitQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitQuery value)? submitQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitQuery value)? submitQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogFlowEventCopyWith<DialogFlowEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogFlowEventCopyWith<$Res> {
  factory $DialogFlowEventCopyWith(
          DialogFlowEvent value, $Res Function(DialogFlowEvent) then) =
      _$DialogFlowEventCopyWithImpl<$Res, DialogFlowEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$DialogFlowEventCopyWithImpl<$Res, $Val extends DialogFlowEvent>
    implements $DialogFlowEventCopyWith<$Res> {
  _$DialogFlowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitQueryImplCopyWith<$Res>
    implements $DialogFlowEventCopyWith<$Res> {
  factory _$$SubmitQueryImplCopyWith(
          _$SubmitQueryImpl value, $Res Function(_$SubmitQueryImpl) then) =
      __$$SubmitQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SubmitQueryImplCopyWithImpl<$Res>
    extends _$DialogFlowEventCopyWithImpl<$Res, _$SubmitQueryImpl>
    implements _$$SubmitQueryImplCopyWith<$Res> {
  __$$SubmitQueryImplCopyWithImpl(
      _$SubmitQueryImpl _value, $Res Function(_$SubmitQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SubmitQueryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitQueryImpl implements SubmitQuery {
  const _$SubmitQueryImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'DialogFlowEvent.submitQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitQueryImplCopyWith<_$SubmitQueryImpl> get copyWith =>
      __$$SubmitQueryImplCopyWithImpl<_$SubmitQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) submitQuery,
  }) {
    return submitQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? submitQuery,
  }) {
    return submitQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? submitQuery,
    required TResult orElse(),
  }) {
    if (submitQuery != null) {
      return submitQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitQuery value) submitQuery,
  }) {
    return submitQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitQuery value)? submitQuery,
  }) {
    return submitQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitQuery value)? submitQuery,
    required TResult orElse(),
  }) {
    if (submitQuery != null) {
      return submitQuery(this);
    }
    return orElse();
  }
}

abstract class SubmitQuery implements DialogFlowEvent {
  const factory SubmitQuery({required final String query}) = _$SubmitQueryImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SubmitQueryImplCopyWith<_$SubmitQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DialogFlowState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogFlowStateCopyWith<DialogFlowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogFlowStateCopyWith<$Res> {
  factory $DialogFlowStateCopyWith(
          DialogFlowState value, $Res Function(DialogFlowState) then) =
      _$DialogFlowStateCopyWithImpl<$Res, DialogFlowState>;
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<Map<String, dynamic>> messages});
}

/// @nodoc
class _$DialogFlowStateCopyWithImpl<$Res, $Val extends DialogFlowState>
    implements $DialogFlowStateCopyWith<$Res> {
  _$DialogFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmcBlocStateImplCopyWith<$Res>
    implements $DialogFlowStateCopyWith<$Res> {
  factory _$$AmcBlocStateImplCopyWith(
          _$AmcBlocStateImpl value, $Res Function(_$AmcBlocStateImpl) then) =
      __$$AmcBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<Map<String, dynamic>> messages});
}

/// @nodoc
class __$$AmcBlocStateImplCopyWithImpl<$Res>
    extends _$DialogFlowStateCopyWithImpl<$Res, _$AmcBlocStateImpl>
    implements _$$AmcBlocStateImplCopyWith<$Res> {
  __$$AmcBlocStateImplCopyWithImpl(
      _$AmcBlocStateImpl _value, $Res Function(_$AmcBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? messages = null,
  }) {
    return _then(_$AmcBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$AmcBlocStateImpl implements _AmcBlocState {
  _$AmcBlocStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Map<String, dynamic>> messages})
      : _messages = messages;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Map<String, dynamic>> _messages;
  @override
  List<Map<String, dynamic>> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'DialogFlowState(isLoading: $isLoading, isError: $isError, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmcBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmcBlocStateImplCopyWith<_$AmcBlocStateImpl> get copyWith =>
      __$$AmcBlocStateImplCopyWithImpl<_$AmcBlocStateImpl>(this, _$identity);
}

abstract class _AmcBlocState implements DialogFlowState {
  factory _AmcBlocState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Map<String, dynamic>> messages}) = _$AmcBlocStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Map<String, dynamic>> get messages;
  @override
  @JsonKey(ignore: true)
  _$$AmcBlocStateImplCopyWith<_$AmcBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
