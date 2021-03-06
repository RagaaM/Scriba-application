import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scriba_app/defaults/splash.dart';
import 'package:scriba_app/defaults/theme.dart';
import 'package:scriba_app/screens/edit_profile.dart';
import 'package:scriba_app/screens/onboarding/intro.dart';
import 'package:scriba_app/screens/signup.dart';
import 'package:scriba_app/widgets/edit_profile_containers.dart';
import 'package:scriba_app/widgets/sharing_links.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../defaults/config.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Settings> {
  // Add link app in play store when deployed
  String appURL = "link Scriba app in play store";
  String FeedbackURL =
      "https://docs.google.com/forms/d/e/1FAIpQLScpldHNCspTFKqV0BStINBo0XYNs5wbOGZiV3NtE6CXvuS5uw/viewform?usp=sf_link";

  _launchURL() async {
    final Uri _url = Uri.parse(FeedbackURL);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    //precacheImage(AssetImage("assets/images/Back-light.png"), context);

    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        // constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Back-light.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              ///crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 40)),
                Text(
                  "Welcome your majesty",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: GoogleFonts.macondoSwashCaps().fontFamily,
                    color: AppTheme.darkRed,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: AppTheme.darkRed,
                boxShadow: [
                  BoxShadow(color: AppTheme.darkRed, spreadRadius: 5),
                ],
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Card(
                    color: AppTheme.darkRed,
                    child: ListTile(
                      onTap: () {
                        _launchURL();
                      },
                      leading: Icon(Icons.thumbs_up_down_rounded),
                      iconColor: AppTheme.moderateOrange,
                      title: Text(
                        "Feedback",
                        style: TextStyle(
                            fontFamily:
                                GoogleFonts.macondoSwashCaps().fontFamily,
                            fontSize: 25,
                            color: AppTheme.moderateOrange),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 30, right: 30),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: AppTheme.moderateOrange)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SharingLinks(
                      icon: Icons.share_rounded,
                      text: "Share App",
                      url: appURL),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    color: AppTheme.darkRed,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Signup()));
                      },
                      leading: Icon(Icons.login),
                      iconColor: AppTheme.moderateOrange,
                      title: Text(
                        "Register/Login",
                        style: TextStyle(
                            fontFamily:
                                GoogleFonts.macondoSwashCaps().fontFamily,
                            fontSize: 25,
                            color: AppTheme.moderateOrange),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 30, right: 30),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: AppTheme.moderateOrange)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
