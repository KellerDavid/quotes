import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes/provider.dart';
import "quote.dart";

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Consumer<StateProvider>(builder: (context, state, child) {
              return TextButton.icon(
                onPressed: () => state.deleteQuote(quote),
                label: const Text("Delete Quote"),
                icon: const Icon(Icons.delete),
              );
            })
          ],
        ),
      ),
    );
  }
}
