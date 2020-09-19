// void main() {
//   var deck = new Deck();

//   print(deck);
//   deck.removeCard('Clubs', 'Ace');
//   print(deck);
// }

class Deck {
  List<Card> cards = [];

  //constructor
  Deck() {
    var ranks = ['Ace', 'One', 'Two', 'King', 'Queen'];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
//         named paramters, we do not need the correct order of parameters
        cards.add(new Card(rank: rank, suit: suit));
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardWithSuits(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int size) {
    //.sublist reurns a new list but with references pointing to the old list, so we need to reassign the old list
    var dealers = cards.sublist(0, size);
    var remainingCards = cards.sublist(size);

    this.cards = remainingCards;
    return dealers;
  }

  removeCard(String suit, String rank) {
    //.removeWhere modifies the existing list
    this.cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;
  String rank;

  //named parameters, suit and rank
  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}
