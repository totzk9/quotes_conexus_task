import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/quotes_bloc.dart';
import '../hide_keyboard_on_tap.dart';

class QuoteView extends StatelessWidget {
  const QuoteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final QuotesBloc bloc = context.read<QuotesBloc>();

    return _SuperScaffold(
      child: SafeArea(
        child: BlocBuilder<QuotesBloc, QuotesState>(
          builder: (_, QuotesState state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CupertinoButton(
                  minSize: 0,
                  child: Icon(Icons.adaptive.arrow_back_rounded),
                  onPressed: () => Navigator.pop(context),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    controller: bloc.quoteController,
                    textCapitalization: TextCapitalization.sentences,
                    style: textTheme.titleMedium,
                    maxLines: null,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (String value) => bloc.updateQuote(),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    '- ${bloc.selectedQuote?.author}',
                    style: textTheme.titleSmall,
                  ),
                ),
                const Spacer(),
                CupertinoButton(
                  minSize: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    height: 48,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Update',
                      style: textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  onPressed: () => bloc.updateQuote(),
                ),
                const SizedBox(height: 12),
                CupertinoButton(
                  minSize: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    height: 48,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Delete',
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () => bloc.deleteQuote(),
                ),
                const SizedBox(height: 8),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SuperScaffold extends StatelessWidget {
  const _SuperScaffold({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HideKeyboardOnTap(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<QuotesBloc, QuotesState>(
          listenWhen: (QuotesState previous, QuotesState current) =>
              previous.message != current.message ||
              previous.navigation != current.navigation,
          listener: (BuildContext context, QuotesState state) async {
            if (state.navigation == 'pop') {
              Navigator.pop(context);
            }
          },
          child: child,
        ),
      ),
    );
  }
}
