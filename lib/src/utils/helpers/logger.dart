import 'dart:developer' as developer;

class Logger {
  static const String tag = "WINCA";

  static d([String tag = tag, dynamic message]) =>
      developer.log('$message', name: tag);

  static final Logger _instance = Logger._internal();

  factory Logger() => _instance;

  Logger._internal();
}
