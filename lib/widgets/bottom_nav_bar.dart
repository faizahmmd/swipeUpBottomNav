import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            //Todo
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Image.asset("assets/images/user.png", fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            //Todo
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Image.asset("assets/images/wallet.png", fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            //Todo
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Image.asset("assets/images/dollar.png", fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            //Todo
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Image.asset("assets/images/add.png", fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
