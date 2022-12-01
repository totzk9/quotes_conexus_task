import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/quotes_bloc.dart';
import '../snackbar.dart';
import '../status.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SuperScaffold(
      child: _QuoteList(),
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
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Programming Quotes',
          style: textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: BlocListener<QuotesBloc, QuotesState>(
        listenWhen: (QuotesState previous, QuotesState current) =>
            previous.message != current.message ||
            previous.navigation != current.navigation,
        listener: (BuildContext context, QuotesState state) async {
          if (state.message.isNotEmpty) {
            final SnackBar snackBar = typedSnackBar(
              state.message.text,
              state.message.type,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }

          if (state.navigation.isNotEmpty) {
            if (state.navigation == 'pop') {
              return;
            }
            Navigator.pushNamed(
              context,
              state.navigation,
              arguments: state.navArgs,
            );
          }
        },
        child: child,
      ),
    );
  }
}

class _QuoteList extends StatelessWidget {
  const _QuoteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final QuotesBloc bloc = context.read<QuotesBloc>();
    final TextTheme textTheme = Theme.of(context).textTheme;
    return BlocBuilder<QuotesBloc, QuotesState>(
      builder: (_, QuotesState state) {
        if (state.status == Status.initial || state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.quotes.isEmpty) {
          return const Center(child: Text('No quotes found'));
        }
        return ListView.separated(
          itemCount: state.quotes.length,
          itemBuilder: (_, int index) {
            return CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              onPressed: () {
                bloc.quoteClicked(state.quotes[index]);
              },
              alignment: Alignment.centerLeft,
              child: Text(
                state.quotes[index].quote,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: textTheme.bodyMedium,
              ),
            );
          },
          separatorBuilder: (_, int index) {
            return Container(
              height: 0.5,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            );
          },
        );
      },
    );
  }
}
