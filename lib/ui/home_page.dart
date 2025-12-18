import 'package:flutter/material.dart';
import 'package:flutter_dating/widgets/swiping_card_deck.dart';

class HomePage extends StatefulWidget {
  HomePage();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SwipingCardDeck(
      cardDeck: const <Card>[
        Card(
            color: Colors.red,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
        Card(
            color: Colors.green,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
        Card(
            color: Colors.blue,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
        Card(
            color: Colors.yellow,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
        Card(
            color: Colors.purple,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
        Card(
            color: Colors.orange,
            child: SizedBox(
              height: 300,
              width: 200,
            )),
      ],
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card, List<Card> cardDeck, int cardsSwiped) =>
          debugPrint("Swiped left!"),
      onRightSwipe: (Card card, List<Card> cardDeck, int cardsSwiped) =>
          debugPrint("Swiped right!"),
      swipeThreshold: MediaQuery.of(context).size.width / 4,
      minimumVelocity: 1000,
      cardWidth: 200,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
    )));
  }
}
