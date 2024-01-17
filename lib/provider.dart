import 'package:flutter/material.dart';
import "quote.dart";

class StateProvider extends ChangeNotifier {
  final List<Quote> _quotes = List.generate(
    15000,
    (index) => Quote(
        text: '$index Be yourself; everyone else is already taken',
        author: "Osca Wilde"),
  );

  List<Quote> get quotes => _quotes;
  void deleteQuote(Quote quote) {
    _quotes.remove(quote);
    notifyListeners();
  }
}
