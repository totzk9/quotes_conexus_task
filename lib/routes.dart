import 'package:flutter/material.dart';

import 'screens/home.view.dart';
import 'screens/quote.view.dart';

abstract class Routes {
  Routes._();

  static const String home = '/home';
  static const String quote = '/quote';
}

class Pages {
  Pages._();

  static final Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    // QuoteView
    Routes.quote: (_) => const QuoteView(),
    // HomeView
    Routes.home: (_) => const HomeView(),
  };
}
