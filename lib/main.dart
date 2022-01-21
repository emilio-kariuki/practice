import "package:flutter/material.dart";
import "Quote.dart";
import "QuoteCard.dart";

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
  ];
  Color back = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text(
          "Quotes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            letterSpacing: 0.6,
            color: Colors.black54,
          ),
        ),
        // centerTitle: true,
        backgroundColor: Colors.grey,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                setState(() {
                  if (back == Colors.red) {
                    back = Colors.white;
                  } else if (back == Colors.white) {
                    back = Colors.red;
                  }
                });
              },
              icon: Icon(Icons.favorite, color: back)),
          IconButton(onPressed: () {}, icon: Icon(Icons.home))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
