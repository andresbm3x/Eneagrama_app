import 'package:eneagram_app/pages/menu_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  InitialPageState createState() {
    return new InitialPageState();
  }
}

class InitialPageState extends State<InitialPage> {
  Widget _appLogo() {
    return Image.asset(
      "assets/images/eneagrama.png",
      height: 250.0,
      width: 250.0,
    );
  }

  Widget _googleSingInButton() {
    return Container(
      width: 200.0,

      child: RaisedButton(
        elevation: 10.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/g_normal.png",
              height: 20.0,
              width: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Entrar con Google"),
            ),
          ],
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "EneagrApp",
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.display2.fontSize,
                          fontFamily:
                              Theme.of(context).textTheme.display2.fontFamily,
                        ),
                      ),
                      _appLogo(),
                      _googleSingInButton(),
                    ],
                  ),
                );
              }
              else{
                return Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "EneagrApp",
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.display2.fontSize,
                          fontFamily:
                              Theme.of(context).textTheme.display2.fontFamily,
                        ),
                      ),
                      _appLogo(),
                      _googleSingInButton(),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
