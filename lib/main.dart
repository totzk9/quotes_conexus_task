import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'bloc/quotes_bloc.dart';
import 'repositories/quotes_data_source.dart';
import 'repositories/quotes_repository.dart';
import 'routes.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        Provider<QuotesDataSource>(
          create: (_) => QuotesDataSource(),
        ),
        RepositoryProvider<QuotesRepository>(
          create: (_) => QuotesRepository(
            dataSource: _.read(),
          ),
        ),
        BlocProvider<QuotesBloc>(
          create: (BuildContext context) => QuotesBloc(
            repository: context.read<QuotesRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Routes.home,
        routes: Pages.routes,
      ),
    );
  }
}
