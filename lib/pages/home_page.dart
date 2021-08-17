import 'package:flutter/material.dart';
import 'package:trip_apps/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
          padding: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 20),
          child: Column(children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: iconcolor),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/love.png',
                        width: 24,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Trip',
                  style: titleText,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Whom You are Planning\nto Travel With?',
                  style: titleText,
                )
              ],
            )
          ]));
    }

    Widget option(int index, String title, String desc) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: selectedIndex == index ? orange : choicecolor),
            color: choicecolor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: subText,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(desc, style: descText),
                ],
              ),
              Icon(
                Icons.check_circle,
                size: 25,
                color: selectedIndex == index ? orange : Colors.transparent,
              )
            ],
          ),
        ),
      );
    }

    Widget button() {
      return Column(children: [
        Container(
          margin: EdgeInsets.all(30),
          width: 340,
          height: 55,
          child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: btnnext),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Continue to Hotels',
                    style: btnText,
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: white,
                    size: 25,
                  )
                ],
              )),
        ),
      ]);
    }

    return Scaffold(
        backgroundColor: bgcolor,
        body: SafeArea(
            child: Column(children: [
          header(),
          option(0, 'Solo Trip', 'Suitable for you need a calm situation'),
          option(1, 'Family Trip', 'Suitable for Make Perfect Memory'),
          option(
              2, 'Couples Trip', 'Suitable for spending time with loved ones'),
          option(3, 'Company Trip', 'Suitable for refreshing your office mind'),
          SizedBox(
            height: 35,
          ),
          selectedIndex == -1 ? SizedBox() : button()
        ])));
  }
}
