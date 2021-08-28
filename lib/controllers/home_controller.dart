import 'package:flutter/material.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;
  double borderRadius = 0.0;

  void changeHomeState(HomeState state) {
    homeState = state;
    if(homeState == HomeState.cart){
      borderRadius = 1.5;
    }else{
      borderRadius = 0.0;
    }
    notifyListeners();
  }
}
