import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final Color cardColor, textColor;
  final double offset;
  const MyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.cardColor = const Color(0xFF1F2123),
    this.textColor = Colors.white,
    int? offsetLevel,
  }) : offset = (offsetLevel != null ? -30.0 * offsetLevel : 0.0);
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offset),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: cardColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            amount,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: textColor,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            code,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: textColor.withValues(
                                alpha: 0.8,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Transform.scale(
                  scale: 2,
                  child: Transform.translate(
                    offset: Offset(-5, 20),
                    child: Icon(
                      icon,
                      color: textColor,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
