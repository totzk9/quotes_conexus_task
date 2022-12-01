class Quote {
  Quote({
    required this.id,
    required this.author,
    required this.quote,
  });

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        id: json['id'] as String,
        author: json['author'] as String,
        quote: json['en'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'author': author,
        'en': quote,
      };

  final String id;
  final String author;
  final String quote;
}
