part of 'quotes_bloc.dart';

@freezed
class QuotesEvent with _$QuotesEvent {
  const factory QuotesEvent.initialized() = Initialized;
  const factory QuotesEvent.quoteClicked(Quote quote) = QuoteClicked;
  const factory QuotesEvent.updateQuote() = UpdateQuote;
  const factory QuotesEvent.deleteQuote() = DeleteQuote;
}
