import 'package:flutter/material.dart';

class Message {
  Message({this.type = ResultType.success, this.text});

  factory Message.empty() => Message(text: '');

  final ResultType type;
  final String? text;

  bool get isEmpty => text?.isEmpty ?? true;
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() => 'Message(type: $type, text: $text)';
}

SnackBar typedSnackBar(
  String? message, [
  ResultType? type = ResultType.success,
]) {
  return SnackBar(
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: type?.color,
    content: Text(
      message ?? '',
      textAlign: TextAlign.center,
    ),
  );
}

enum ResultType { neutral, info, success, error, warning }

extension ResultTypeExt on ResultType {
  Color get color {
    switch (this) {
      case ResultType.neutral:
        return const Color(0xFF303030);
      case ResultType.info:
        return const Color(0xFF1976D2);
      case ResultType.success:
        return const Color(0xFF689F38);
      case ResultType.error:
        return const Color(0xFFD32F2F);
      case ResultType.warning:
        return const Color(0xFFFFA000);
    }
  }
}
