import 'package:drag_and_drop/core/viewmodel/data.dart';
import 'package:drag_and_drop/ui/resources/colors.dart';
import 'package:drag_and_drop/ui/resources/strings.dart';
import 'package:drag_and_drop/ui/widget/draggableWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: cardItems(context),
    );
  }

  List<Widget> cardItems(BuildContext context) {
    var cardItemdraggable;
    List<Widget> carditemsList = [];
    if (Provider.of<Data>(context).itemsList.length < 1) {
      cardItemdraggable = Container(
        height: 200.0,
        width: 200.0,
        child: Card(
          color: GRAY_COLOR,
          child: Center(
              child: Text(
            NO_ITEMS_LEFT,
            style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
          )),
        ),
      );
    } else {
      for (int i = 0; i < Provider.of<Data>(context).itemsList.length; i++) {
        cardItemdraggable = Container(
          child: DraggableWidget(i: i),
        );
      }
    }
    carditemsList.add(cardItemdraggable);

    return carditemsList;
  }
}
