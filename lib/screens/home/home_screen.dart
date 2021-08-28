import 'package:flutter/material.dart';
import 'package:swipe_up_bottom_nav/controllers/home_controller.dart';
import 'package:swipe_up_bottom_nav/constants.dart';

// Today i will show you how to implement the animation
// So starting project comes with the UI
// Run the app

class HomeScreen extends StatelessWidget {
  final controller = HomeController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA),
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                    return Stack(
                      children: [
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.homeState == HomeState.normal
                              ? 0.0
                              : -(constraints.maxHeight -
                                  650),
                          left: 0,
                          right: 0,
                          height: constraints.maxHeight  -
                              cartBarHeight,
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:  BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(defaultPadding * controller.borderRadius),
                                  bottomRight:
                                      Radius.circular(defaultPadding * controller.borderRadius),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Card Panel
                        AnimatedPositioned(
                          duration: panelTransition,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: controller.homeState == HomeState.normal
                              ? cartBarHeight
                              : (constraints.maxHeight - 650),
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              color: Color(0xFFEAEAEA),
                              alignment: Alignment.topLeft,
                              child: AnimatedSwitcher(
                                duration: panelTransition,
                                child: controller.homeState == HomeState.normal
                                    ? Container()
                                    : Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("My bottom nav bar"),
                                      Text("Hey")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}
