import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import "provider.dart";
import "quote_card.dart";

void main() => runApp(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => StateProvider(),
          child: QList(),
        ),
      ),
    );

class QList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Consumer<StateProvider>(builder: (context, state, child) {
        return ListView.builder(
            itemCount: state.quotes.length,
            itemBuilder: (context, index) {
              return QuoteCard(state.quotes[index]);
            });
      }),
    );
  }
}
