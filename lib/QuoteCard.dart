import "package:flutter/material.dart";
import "Quote.dart";

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 7, 5, 0,),
      child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  quote.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                    onPressed: delete,
                    child: Icon(
                      Icons.delete,
                      size: 20.0,
                      color: Colors.white,
                    ))
              ],
            ),
          )),
    );
  }
}
