// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Quote quote) quoteClicked,
    required TResult Function() updateQuote,
    required TResult Function() deleteQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Quote quote)? quoteClicked,
    TResult? Function()? updateQuote,
    TResult? Function()? deleteQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Quote quote)? quoteClicked,
    TResult Function()? updateQuote,
    TResult Function()? deleteQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(QuoteClicked value) quoteClicked,
    required TResult Function(UpdateQuote value) updateQuote,
    required TResult Function(DeleteQuote value) deleteQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(QuoteClicked value)? quoteClicked,
    TResult? Function(UpdateQuote value)? updateQuote,
    TResult? Function(DeleteQuote value)? deleteQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(QuoteClicked value)? quoteClicked,
    TResult Function(UpdateQuote value)? updateQuote,
    TResult Function(DeleteQuote value)? deleteQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesEventCopyWith<$Res> {
  factory $QuotesEventCopyWith(
          QuotesEvent value, $Res Function(QuotesEvent) then) =
      _$QuotesEventCopyWithImpl<$Res, QuotesEvent>;
}

/// @nodoc
class _$QuotesEventCopyWithImpl<$Res, $Val extends QuotesEvent>
    implements $QuotesEventCopyWith<$Res> {
  _$QuotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$QuotesEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'QuotesEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Quote quote) quoteClicked,
    required TResult Function() updateQuote,
    required TResult Function() deleteQuote,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Quote quote)? quoteClicked,
    TResult? Function()? updateQuote,
    TResult? Function()? deleteQuote,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Quote quote)? quoteClicked,
    TResult Function()? updateQuote,
    TResult Function()? deleteQuote,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(QuoteClicked value) quoteClicked,
    required TResult Function(UpdateQuote value) updateQuote,
    required TResult Function(DeleteQuote value) deleteQuote,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(QuoteClicked value)? quoteClicked,
    TResult? Function(UpdateQuote value)? updateQuote,
    TResult? Function(DeleteQuote value)? deleteQuote,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(QuoteClicked value)? quoteClicked,
    TResult Function(UpdateQuote value)? updateQuote,
    TResult Function(DeleteQuote value)? deleteQuote,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements QuotesEvent {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class _$$QuoteClickedCopyWith<$Res> {
  factory _$$QuoteClickedCopyWith(
          _$QuoteClicked value, $Res Function(_$QuoteClicked) then) =
      __$$QuoteClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({Quote quote});
}

/// @nodoc
class __$$QuoteClickedCopyWithImpl<$Res>
    extends _$QuotesEventCopyWithImpl<$Res, _$QuoteClicked>
    implements _$$QuoteClickedCopyWith<$Res> {
  __$$QuoteClickedCopyWithImpl(
      _$QuoteClicked _value, $Res Function(_$QuoteClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$QuoteClicked(
      null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quote,
    ));
  }
}

/// @nodoc

class _$QuoteClicked implements QuoteClicked {
  const _$QuoteClicked(this.quote);

  @override
  final Quote quote;

  @override
  String toString() {
    return 'QuotesEvent.quoteClicked(quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteClicked &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteClickedCopyWith<_$QuoteClicked> get copyWith =>
      __$$QuoteClickedCopyWithImpl<_$QuoteClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Quote quote) quoteClicked,
    required TResult Function() updateQuote,
    required TResult Function() deleteQuote,
  }) {
    return quoteClicked(quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Quote quote)? quoteClicked,
    TResult? Function()? updateQuote,
    TResult? Function()? deleteQuote,
  }) {
    return quoteClicked?.call(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Quote quote)? quoteClicked,
    TResult Function()? updateQuote,
    TResult Function()? deleteQuote,
    required TResult orElse(),
  }) {
    if (quoteClicked != null) {
      return quoteClicked(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(QuoteClicked value) quoteClicked,
    required TResult Function(UpdateQuote value) updateQuote,
    required TResult Function(DeleteQuote value) deleteQuote,
  }) {
    return quoteClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(QuoteClicked value)? quoteClicked,
    TResult? Function(UpdateQuote value)? updateQuote,
    TResult? Function(DeleteQuote value)? deleteQuote,
  }) {
    return quoteClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(QuoteClicked value)? quoteClicked,
    TResult Function(UpdateQuote value)? updateQuote,
    TResult Function(DeleteQuote value)? deleteQuote,
    required TResult orElse(),
  }) {
    if (quoteClicked != null) {
      return quoteClicked(this);
    }
    return orElse();
  }
}

abstract class QuoteClicked implements QuotesEvent {
  const factory QuoteClicked(final Quote quote) = _$QuoteClicked;

  Quote get quote;
  @JsonKey(ignore: true)
  _$$QuoteClickedCopyWith<_$QuoteClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuoteCopyWith<$Res> {
  factory _$$UpdateQuoteCopyWith(
          _$UpdateQuote value, $Res Function(_$UpdateQuote) then) =
      __$$UpdateQuoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateQuoteCopyWithImpl<$Res>
    extends _$QuotesEventCopyWithImpl<$Res, _$UpdateQuote>
    implements _$$UpdateQuoteCopyWith<$Res> {
  __$$UpdateQuoteCopyWithImpl(
      _$UpdateQuote _value, $Res Function(_$UpdateQuote) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateQuote implements UpdateQuote {
  const _$UpdateQuote();

  @override
  String toString() {
    return 'QuotesEvent.updateQuote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateQuote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Quote quote) quoteClicked,
    required TResult Function() updateQuote,
    required TResult Function() deleteQuote,
  }) {
    return updateQuote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Quote quote)? quoteClicked,
    TResult? Function()? updateQuote,
    TResult? Function()? deleteQuote,
  }) {
    return updateQuote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Quote quote)? quoteClicked,
    TResult Function()? updateQuote,
    TResult Function()? deleteQuote,
    required TResult orElse(),
  }) {
    if (updateQuote != null) {
      return updateQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(QuoteClicked value) quoteClicked,
    required TResult Function(UpdateQuote value) updateQuote,
    required TResult Function(DeleteQuote value) deleteQuote,
  }) {
    return updateQuote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(QuoteClicked value)? quoteClicked,
    TResult? Function(UpdateQuote value)? updateQuote,
    TResult? Function(DeleteQuote value)? deleteQuote,
  }) {
    return updateQuote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(QuoteClicked value)? quoteClicked,
    TResult Function(UpdateQuote value)? updateQuote,
    TResult Function(DeleteQuote value)? deleteQuote,
    required TResult orElse(),
  }) {
    if (updateQuote != null) {
      return updateQuote(this);
    }
    return orElse();
  }
}

abstract class UpdateQuote implements QuotesEvent {
  const factory UpdateQuote() = _$UpdateQuote;
}

/// @nodoc
abstract class _$$DeleteQuoteCopyWith<$Res> {
  factory _$$DeleteQuoteCopyWith(
          _$DeleteQuote value, $Res Function(_$DeleteQuote) then) =
      __$$DeleteQuoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteQuoteCopyWithImpl<$Res>
    extends _$QuotesEventCopyWithImpl<$Res, _$DeleteQuote>
    implements _$$DeleteQuoteCopyWith<$Res> {
  __$$DeleteQuoteCopyWithImpl(
      _$DeleteQuote _value, $Res Function(_$DeleteQuote) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteQuote implements DeleteQuote {
  const _$DeleteQuote();

  @override
  String toString() {
    return 'QuotesEvent.deleteQuote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteQuote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Quote quote) quoteClicked,
    required TResult Function() updateQuote,
    required TResult Function() deleteQuote,
  }) {
    return deleteQuote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Quote quote)? quoteClicked,
    TResult? Function()? updateQuote,
    TResult? Function()? deleteQuote,
  }) {
    return deleteQuote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Quote quote)? quoteClicked,
    TResult Function()? updateQuote,
    TResult Function()? deleteQuote,
    required TResult orElse(),
  }) {
    if (deleteQuote != null) {
      return deleteQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(QuoteClicked value) quoteClicked,
    required TResult Function(UpdateQuote value) updateQuote,
    required TResult Function(DeleteQuote value) deleteQuote,
  }) {
    return deleteQuote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(QuoteClicked value)? quoteClicked,
    TResult? Function(UpdateQuote value)? updateQuote,
    TResult? Function(DeleteQuote value)? deleteQuote,
  }) {
    return deleteQuote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(QuoteClicked value)? quoteClicked,
    TResult Function(UpdateQuote value)? updateQuote,
    TResult Function(DeleteQuote value)? deleteQuote,
    required TResult orElse(),
  }) {
    if (deleteQuote != null) {
      return deleteQuote(this);
    }
    return orElse();
  }
}

abstract class DeleteQuote implements QuotesEvent {
  const factory DeleteQuote() = _$DeleteQuote;
}

/// @nodoc
mixin _$QuotesState {
  Status get status => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;
  String get navigation => throw _privateConstructorUsedError;
  dynamic get navArgs => throw _privateConstructorUsedError;
  List<Quote> get quotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotesStateCopyWith<QuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) then) =
      _$QuotesStateCopyWithImpl<$Res, QuotesState>;
  @useResult
  $Res call(
      {Status status,
      Message message,
      String navigation,
      dynamic navArgs,
      List<Quote> quotes});
}

/// @nodoc
class _$QuotesStateCopyWithImpl<$Res, $Val extends QuotesState>
    implements $QuotesStateCopyWith<$Res> {
  _$QuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? navigation = null,
    Object? navArgs = freezed,
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      navArgs: freezed == navArgs
          ? _value.navArgs
          : navArgs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<Quote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuotesStateCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory _$$_QuotesStateCopyWith(
          _$_QuotesState value, $Res Function(_$_QuotesState) then) =
      __$$_QuotesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Message message,
      String navigation,
      dynamic navArgs,
      List<Quote> quotes});
}

/// @nodoc
class __$$_QuotesStateCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res, _$_QuotesState>
    implements _$$_QuotesStateCopyWith<$Res> {
  __$$_QuotesStateCopyWithImpl(
      _$_QuotesState _value, $Res Function(_$_QuotesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? navigation = null,
    Object? navArgs = freezed,
    Object? quotes = null,
  }) {
    return _then(_$_QuotesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String,
      navArgs: freezed == navArgs
          ? _value.navArgs
          : navArgs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<Quote>,
    ));
  }
}

/// @nodoc

class _$_QuotesState extends _QuotesState {
  const _$_QuotesState(
      {required this.status,
      required this.message,
      required this.navigation,
      this.navArgs = null,
      required final List<Quote> quotes})
      : _quotes = quotes,
        super._();

  @override
  final Status status;
  @override
  final Message message;
  @override
  final String navigation;
  @override
  @JsonKey()
  final dynamic navArgs;
  final List<Quote> _quotes;
  @override
  List<Quote> get quotes {
    if (_quotes is EqualUnmodifiableListView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotes);
  }

  @override
  String toString() {
    return 'QuotesState(status: $status, message: $message, navigation: $navigation, navArgs: $navArgs, quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotesState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation) &&
            const DeepCollectionEquality().equals(other.navArgs, navArgs) &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      navigation,
      const DeepCollectionEquality().hash(navArgs),
      const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuotesStateCopyWith<_$_QuotesState> get copyWith =>
      __$$_QuotesStateCopyWithImpl<_$_QuotesState>(this, _$identity);
}

abstract class _QuotesState extends QuotesState {
  const factory _QuotesState(
      {required final Status status,
      required final Message message,
      required final String navigation,
      final dynamic navArgs,
      required final List<Quote> quotes}) = _$_QuotesState;
  const _QuotesState._() : super._();

  @override
  Status get status;
  @override
  Message get message;
  @override
  String get navigation;
  @override
  dynamic get navArgs;
  @override
  List<Quote> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$_QuotesStateCopyWith<_$_QuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}
