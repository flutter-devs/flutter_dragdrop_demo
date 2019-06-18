import 'package:drag_and_drop/core/model/cardItem.dart';
import 'package:flutter/material.dart';
import 'package:drag_and_drop/ui/resources/constants.dart';
import 'package:flutter/foundation.dart';

class Data with ChangeNotifier {
  bool successDrop;
  List<CardItem> items;
  CardItem acceptedData;
  Color acceptedColor;

  Data() {
    successDrop = false;
    acceptedColor = Colors.grey;

    items = Constants.initializeList(items);
  }

  bool get isSuccessDrop => successDrop;
  List<CardItem> get itemsList => items;
  CardItem get getAcceptedData => acceptedData;
  Color get getAcceptedColor => acceptedColor;

  set setSuccessDrop(bool status) {
    successDrop = status;
    notifyListeners();
  }

  changeAcceptedData(CardItem data) {
    acceptedData = data;
    notifyListeners();
  }

  changeAcceptedColor(Color color) {
    acceptedColor = color;
    notifyListeners();
  }

  changeSuccessDrop(bool status) {
    setSuccessDrop = status;
  }

  removeLastItem() {
    items.removeLast();
    notifyListeners();
  }

  addItemToList(CardItem item) {
    items.add(item);
    notifyListeners();
  }

  initializeDraggableList() {
    items = Constants.initializeList(items);
    notifyListeners();
  }
}
