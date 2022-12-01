import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../models/quote.dart';
import '../repositories/quotes_repository.dart';
import '../routes.dart';
import '../snackbar.dart';
import '../status.dart';

part 'quotes_bloc.freezed.dart';
part 'quotes_event.dart';
part 'quotes_state.dart';

enum EventState {
  init,
  viewQuote,
  updateQuote,
  deleteQuote,
}

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  QuotesBloc({
    required QuotesRepository repository,
  })  : _repository = repository,
        super(QuotesState.initial()) {
    initialized();
  }

  final TextEditingController quoteController = TextEditingController();
  Quote? _selectedQuote;

  Quote? get selectedQuote => _selectedQuote;

  void initialized() {
    on<QuotesEvent>((
      QuotesEvent event,
      Emitter<QuotesState> emit,
    ) async {
      EventState? eventState;
      event.map(initialized: (_) {
        eventState = EventState.init;
      }, quoteClicked: (QuoteClicked event) {
        eventState = EventState.viewQuote;
        _selectedQuote = event.quote;
        quoteController.text = _selectedQuote!.quote;
        emit(
          state.success(toNavigate: Routes.quote),
        );
      }, updateQuote: (_) {
        eventState = EventState.updateQuote;
      }, deleteQuote: (_) {
        eventState = EventState.deleteQuote;
      });

      switch (eventState) {
        case EventState.init:
          try {
            emit(state.loading());
            final List<Quote> quotes = await _repository.getQuotes();
            emit(state.success(quotes: quotes));
          } catch (e) {
            emit(
              state.failure(
                withMessage: Message(
                  text: 'Something went wrong.',
                  type: ResultType.error,
                ),
              ),
            );
          }

          break;
        case EventState.viewQuote:
          break;
        case EventState.updateQuote:
          try {
            emit(state.loading());
            await _repository.updateQuote(
              id: _selectedQuote!.id,
              author: _selectedQuote!.author,
              quote: quoteController.text.trim(),
            );
            final List<Quote> quotes = await _repository.getQuotes();
            emit(
              state.success(
                quotes: quotes,
                withMessage: Message(
                  text: 'Successfully updated.',
                ),
                toNavigate: 'pop',
              ),
            );
          } catch (e) {
            emit(
              state.failure(
                withMessage: Message(
                  text: 'Something went wrong.',
                  type: ResultType.error,
                ),
              ),
            );
          }

          break;
        case EventState.deleteQuote:
          try {
            emit(state.loading());
            await _repository.deleteQuote(id: _selectedQuote!.id);
            final List<Quote> quotes = await _repository.getQuotes();
            _selectedQuote = null;
            emit(
              state.success(
                quotes: quotes,
                withMessage: Message(
                  text: 'Successfully deleted.',
                ),
                toNavigate: 'pop',
              ),
            );
          } catch (e) {
            emit(
              state.failure(
                withMessage: Message(
                  text: 'Something went wrong.',
                  type: ResultType.error,
                ),
              ),
            );
          }
          break;
        default:
          break;
      }
    });

    add(const Initialized());
  }

  final QuotesRepository _repository;

  // + Triggers

  void quoteClicked(Quote quote) => add(QuoteClicked(quote));

  void updateQuote() {
    if (quoteController.text.trim().isEmpty) {
      return;
    }
    add(const UpdateQuote());
  }

  void deleteQuote() {
    if (_selectedQuote == null) {
      return;
    }
    add(const DeleteQuote());
  }
}
