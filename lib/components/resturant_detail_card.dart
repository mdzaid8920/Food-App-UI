import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class ResturantDetailCard extends StatelessWidget {
  const ResturantDetailCard({
    Key? key,
    required this.title,
    required this.location,
    required this.imageSrc,
    required this.press,
  }) : super(key: key);
  final String title;
  final String location;
  final String imageSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color(0xff1F2937),
                    fontSize: getProportionalWidth(20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: getProportionalWidth(20),
                    color: kPrimaryColor,
                  ),
                  Text(
                    location,
                    maxLines: 1,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color(0xff6B7280),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                // height: getProportionalHeight(400),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: imageSrc.isNotEmpty
                        ? Image.network(imageSrc)
                        : Center(
                            child:
                                CircularProgressIndicator(color: kPrimaryColor),
                          )),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: getProportionalWidth(7)!),
                width: double.infinity,
                height: getProportionalHeight(120),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled_sharp,
                              color: kPrimaryColor,
                              size: getProportionalWidth(20),
                            ),
                            Text(
                              " Open today",
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "10:00 AM",
                              style: TextStyle(
                                color: Color(0xff1F2937),
                              ),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                color: Color(0xff1F2937),
                              ),
                            ),
                            Text(
                              "12:00 PM",
                              style: TextStyle(
                                color: Color(0xff1F2937),
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: press,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.directions,
                              color: Colors.blue,
                            ),
                            Text(
                              "Visit the Resturant",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
