import 'package:eneagram_app/pages/info_page.dart';
import 'package:eneagram_app/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'package:eneagram_app/wIdgets/backdrop.dart';



class MenuPage extends StatefulWidget {

  

  @override
  _MenuPageState createState() => new _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {

      MenuOption _defaultMenuOption;
  MenuOption _selectedMenuOption;

  List<MenuOption> _allMenuOptions = [
    MenuOption(
      id: 1,
      title: "Información",
      content: InfoPage(),
    ),
    MenuOption(
      id: 2,
      title: "Test Eneatipos",
      content: TestPage(),
    ),
    MenuOption(
      id: 3,
      title: "Info. Eneatipos",
      content: Text("Info Eneatipos TEST"),
    ),
    MenuOption(
      id: 4,
      title: "Perfil Personal",
      content: Text("Perfil Test aaa"),
    ),
  ];

  Widget _menuLogo() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: Image.asset("assets/images/eneagrama.png"));
  }

@override
void initState(){
  super.initState();
  _defaultMenuOption=_allMenuOptions[0];
  _selectedMenuOption=_defaultMenuOption;
}


  @override
  Widget build(BuildContext context) {
    final List<Widget> _menuItemsPortrait =
        _allMenuOptions.map<Widget>((MenuOption option) {
      final bool selected = option == _selectedMenuOption;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Material(
          elevation: selected ? 5.0 : 10.0,
          shape: const RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
            side: BorderSide(width: 3.0,color: Colors.grey,style: BorderStyle.solid)
          ),
          
          color: selected ? Colors.white.withOpacity(0.60) : Color(0xFFDFB966),//Theme.of(context).primaryColor,
          child: new ListTile(
            title: new Text(option.title,softWrap: true,textAlign: TextAlign.center,),
            selected: selected,
            onTap: () {
              setState(() {
                _selectedMenuOption = option;
              });
            },
          ),
        ),
      );
    }).toList();

    return Backdrop(
      menuOption: _selectedMenuOption,
      backTitle: Text("Eneagrama"),
      backPanel: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: MediaQuery.of(context).orientation == Orientation.portrait
                  ? Column(
                      children: <Widget>[
                        _menuLogo(),
                        Column(
                          children: _menuItemsPortrait,
                        ),
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        _menuLogo(),
                        Column(children: _menuItemsPortrait,)
                      ],
                    ),
            ),
          ),
        ]),
      frontTitle: Text(_selectedMenuOption.title),
      frontPanel: _selectedMenuOption.content,
    );
  }
}

class MenuOption {
  int id;
  String title;
  Widget content;

  MenuOption({this.id, this.title, this.content});
}
