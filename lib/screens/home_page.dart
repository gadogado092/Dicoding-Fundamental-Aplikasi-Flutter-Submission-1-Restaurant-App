import 'package:flutter/material.dart';
import 'package:restaurant_app/res/colors.dart';
import 'package:restaurant_app/widgets/base_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      padding: EdgeInsets.all(24),
                      color: RestaurantColors.PRIMARY_COLOR,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          BaseText(
                            text: 'Hi...',
                            typographicScale: TypographicScale.H1,
                            textColor: Colors.white,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          BaseText(
                              text: 'Where do you want to Eat?',
                              textColor: Colors.white)
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BaseText(
                                      text: 'Find Restaurant',
                                      textColor: RestaurantColors.GREY_COLOR_1,
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: RestaurantColors.PRIMARY_COLOR,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Text("ada"),
          ],
        ),
      )),
    );
  }
}
