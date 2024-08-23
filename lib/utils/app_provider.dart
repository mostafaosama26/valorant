import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/screens/charcter_description.dart';

class AppProvider extends ChangeNotifier{
   void buildAgentPage(BuildContext context,String name, int index){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        CharcterDesc(name: name,index: index,)));
    notifyListeners();
  }
}