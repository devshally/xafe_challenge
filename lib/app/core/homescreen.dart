import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/widgets/bottom_sheet_menu.dart';
import 'package:xafe_challenge/app/core/widgets/spending_details.dart';
import 'package:xafe_challenge/app/core/widgets/stat_button.dart';
import 'package:xafe_challenge/app/core/widgets/timeline_selector.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildBottomSheet(BuildContext context) {
    return BottomSheetMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF3D74FF),
                  Color(0xFF094DFF),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 70.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimelineSelector(),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (ctx) {
                              return FractionallySizedBox(
                                heightFactor: 0.4,
                                child: _buildBottomSheet(context),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                          );
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.pen,
                          color: Color(0xFF094DFF),
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StatButton(
                        currentValue: 55,
                      ),
                      StatButton(
                        currentValue: 90,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expenses',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Euclid Circular',
                              ),
                            ),
                            Text(
                              "\$4,750.00", //TODO: Fetch from firebase
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Euclid Circular',
                                fontSize: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Euclid Circular',
                              ),
                            ),
                            Text(
                              "\$9,500.00", //TODO: Fetch from firebase
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Euclid Circular',
                                fontSize: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: SpendingDetails(),
          ),
        ],
      ),
    );
  }
}
