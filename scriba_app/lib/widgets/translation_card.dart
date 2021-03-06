import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scriba_app/defaults/theme.dart';

class TranslationWidget extends StatelessWidget {
  final TextAlign dir;
  final String title;
  final String subtitle;
  final String tootltip;
  final Widget dest;
  final Alignment align;
  final String btnText;
  final String appbarText;
  final Widget saveDest;

  const TranslationWidget(
      {Key? key,
      required this.dir,
      required this.title,
      required this.subtitle,
      required this.tootltip,
      required this.dest,
      required this.align,
      required this.btnText,
      required this.appbarText,
      required this.saveDest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appbarText,
              style: TextStyle(
                  color: AppTheme.moderateOrange,
                  fontSize: 25,
                  fontFamily: GoogleFonts.macondoSwashCaps().fontFamily)),
          centerTitle: true,
          backgroundColor: AppTheme.darkRed,
        ),
        body: Container(
            // constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Back-dark.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  child: Card(
                      color: Colors.transparent,
                      child: ListTile(
                        title: Text(
                          title,
                          textAlign: dir,
                          style: TextStyle(
                            color: AppTheme.moderateOrange,
                            fontFamily: AppTheme.macondoFont.fontFamily,
                            fontSize: 25,
                          ),
                        ),
                        subtitle: Text(
                          subtitle,
                          textAlign: dir,
                          style: TextStyle(
                            color: AppTheme.moderateOrange,
                            fontFamily: AppTheme.macondoFont.fontFamily,
                            fontSize: 18,
                          ),
                        ),
                        trailing: IconButton(
                          alignment: align,
                          icon: Icon(Icons.translate,
                              color: AppTheme.moderateOrange),
                          tooltip: "Translate to Arabic",
                          disabledColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => dest),
                            );
                          },
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: 30, left: 20, right: 20, bottom: 0),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: AppTheme.moderateOrange))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    style: AppTheme.buttonStyle,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => saveDest));
                    },
                    icon: Icon(Icons.save),
                    label: Text(
                      btnText,
                    )),
              ],
            )));
  }
}
