import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scriba_app/screens/translation_arabic.dart';
import 'package:scriba_app/widgets/translation_card.dart';
import '/defaults/theme.dart';

import '../defaults/config.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Translation of Hieroglyph",
            style: TextStyle(
                color: AppTheme.moderateOrange,
                fontSize: 25,
                fontFamily: GoogleFonts.macondoSwashCaps().fontFamily)),
        centerTitle: true,
        backgroundColor: AppTheme.darkRed,
      ),
      body: TranslationWidget(
          align: Alignment.topRight,
          dir: TextAlign.left,
          title: "Translation\n",
          subtitle:
              "Lorem ipsum dolor sit amet. Aut molestiae consequuntur et praesentium quibusdam ad quis veritatis est dolorum.",
          tootltip: "Translate to Arabic",
          dest: TranslationScreenArabic()),
    );
  }
}
