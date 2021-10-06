import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendsProducts extends StatelessWidget {
  const RecomendsProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendProductCard(
            image: "assets/images/image_1.PNG",
            title: "Tesla S",
            city: "Львів",
            price: 24400,
            press: () {
            },
          ),
          RecomendProductCard(
            image: "assets/images/image_2.PNG",
            title: "Iphone 11 pro",
            city: "Холодновідка",
            price: 999,
            press: () {

            },
          ),
          RecomendProductCard(
            image: "assets/images/image_3.PNG",
            title: "imac 24' 2021",
            city: "скнилів",
            price: 2500,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendProductCard extends StatelessWidget {
  const RecomendProductCard({
    Key key,
    this.image,
    this.title,
    this.city,
    this.price,
    this.press,
  }) : super(key: key);

  final int price;
  final String image, title, city;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$city".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
