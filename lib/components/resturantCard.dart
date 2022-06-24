import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.location,
    required this.cardPress,
    required this.buttonPress, required this.buttonText,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String location;
  final String buttonText;
  final VoidCallback cardPress;
  final VoidCallback buttonPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardPress,
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        width: double.infinity,
        height: getProportionalHeight(250),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0.0,
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(children: [
              Container(
                // padding: EdgeInsets.all(7),
                width: 90,
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.network(
                        imageSrc,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: kPrimaryColor,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(0.4),
                              child: Text(
                                location,
                                style: TextStyle(
                                    fontSize: 12, overflow: TextOverflow.fade),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Expanded(
                              child: GestureDetector(
                            onTap: buttonPress,
                            child: Container(
                              alignment: Alignment.center,
                              height: 28,
                              width: 40,
                              child: Text(
                                buttonText,
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
