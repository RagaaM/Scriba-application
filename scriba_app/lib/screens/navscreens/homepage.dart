import 'package:flutter/material.dart';
import 'package:scriba_app/defaults/theme.dart';
import '/widgets/button_widget.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Back-dark.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: AppTheme.darkRed,
                  ),
                  child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/images/homepage_icons/Import.png",
                        width: 70,
                      )),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: AppTheme.darkRed,
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.camera,
                      color: AppTheme.moderateOrange,
                      size: 50,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ));
}