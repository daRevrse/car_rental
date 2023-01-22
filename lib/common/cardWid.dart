import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<CardData> cards;
  CardList({required this.cards});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: <Widget>[
              Image.network(
                cards[index].imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(cards[index].description),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CardData {
  final String imageUrl;
  final String description;
  CardData({required this.imageUrl, required this.description});
}
