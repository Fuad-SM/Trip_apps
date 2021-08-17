import 'package:flutter/material.dart';
import 'package:trip_apps/theme.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                ),
                Text(
                  'Hello World',
                  style: TextStyle(color: white, fontSize: 20),
                ),
                Image.asset('assets/images/love.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
