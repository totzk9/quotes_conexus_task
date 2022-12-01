part of 'quotes_bloc.dart';

@freezed
class QuotesState with _$QuotesState {
  const factory QuotesState({
    required Status status,
    required Message message,
    required String navigation,
    @Default(null) dynamic navArgs,
    required List<Quote> quotes,
  }) = _QuotesState;

  factory QuotesState.initial() => QuotesState(
        status: Status.initial,
        message: Message.empty(),
        navigation: '',
        quotes: <Quote>[],
      );

  const QuotesState._();

  QuotesState loading() => transform(status: Status.loading);

  QuotesState success({
    Message? withMessage,
    String? toNavigate,
    dynamic withNavArgs,
    List<Quote>? quotes,
  }) =>
      transform(
        status: Status.success,
        message: withMessage,
        navigation: toNavigate,
        navArgs: withNavArgs,
        quotes: quotes,
      );

  QuotesState failure({Message? withMessage}) => transform(
        status: Status.failure,
        message: withMessage,
      );

  QuotesState should({Message? showMessage, String? navigateTo}) => transform(
        message: showMessage,
        navigation: navigateTo,
      );

  QuotesState transform({
    Status? status,
    Message? message,
    String? navigation,
    dynamic navArgs,
    List<Quote>? quotes,
  }) =>
      copyWith(
        status: status ?? this.status,
        message: message ?? Message.empty(),
        navigation: navigation ?? '',
        navArgs: navArgs,
        quotes: quotes ?? this.quotes,
      );
}
