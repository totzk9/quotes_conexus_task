import '../models/quote.dart';
import 'quotes_data_source.dart';

class QuotesRepository {
  QuotesRepository({
    required QuotesDataSource dataSource,
  }) : _dataSource = dataSource;

  final QuotesDataSource _dataSource;

  Future<List<Quote>> getQuotes() async {
    final List<dynamic>? res = await _dataSource.getRequest<List<dynamic>>(
      path: '/Quotes',
      args: <String, dynamic>{
        'count': 10,
      },
    );
    if (res == null) {
      return <Quote>[];
    }
    return res
        .map((dynamic e) => Quote.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Map<String, dynamic>?> updateQuote({
    required String id,
    required String author,
    required String quote,
  }) async {
    return _dataSource.putRequest(
      path: '/Quotes',
      args: <String, dynamic>{
        'id': id,
        'author': author,
        'en': quote,
      },
    );
  }

  Future<void> deleteQuote({
    required String id,
  }) async {
    return _dataSource.deleteRequest(
      path: '/Quotes/$id',
    );
  }
}
