
import 'package:drag_and_drop/core/model/cardItem.dart';
import 'package:drag_and_drop/ui/resources/colors.dart';
import 'package:drag_and_drop/ui/resources/strings.dart';

class Constants{

  static String SPLASH_SCREEN='SPLASH_SCREEN';
static String HOME_SCREEN='HOME_SCREEN';

 static List<CardItem> initializeList(List<CardItem> itemList){

     itemList = [
      CardItem(content: JAVA, cardColor: BROWN_COLOR),
      CardItem(content: PHP, cardColor: RED_COLOR),
      CardItem(content: KOTLIN, cardColor: ORANGE_COLOR),
      CardItem(content: FLUTTER, cardColor: BLUE_COLOR),
      CardItem(content: NODEJS, cardColor: GREEN_COLOR),
    ];

    return itemList;
    
  }

}