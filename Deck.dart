
void main()
{
  Deck deck = new Deck();
  print(deck);
  deck.removeCard('Espadas','Tres');
  print(deck);
}

class Card
{
  
  String suit;
	String rank;
  
  Card({this.suit,this.rank});
  
  String toString() => "$rank de $suit";
}

class Deck
{
  List<Card> cards;
  
  Deck()
  {
    cards = [];
    var ranks = ['As','Dos','Tres',];//'Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez','Jack','Reina','Rey'];
    var suits = ['Diamantes','Corazones','Treboles','Espadas'];
    for(var suit in suits)
    {
      for(var rank in ranks)
    	{
      	var card = new Card
          (
          suit:suit,
          rank:rank
        );
        cards.add(card);
    	}
    }
  }
  
  void shuffle()=>cards.shuffle();
  
  String toString()=>cards.toString();
  
  Iterable<Card> cardsWithSuit(String suit)=>cards.where((card)=>card.suit == suit);
  
  List<Card> deal(int cards)
  {
    var hand = this.cards.sublist(0,cards);
    this.cards = this.cards.sublist(cards); 
      return hand;
  }
  
	void removeCard(String suit,String rank)=>cards.removeWhere((card)=>card.rank == rank && card.suit == suit);
}