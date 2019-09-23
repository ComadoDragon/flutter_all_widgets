import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/main_menu.dart';

class HomePage extends StatelessWidget {

  final List<MainMenu> _mainMenu = MainMenu.allMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter All Widgets"),
      ),
      body: _mainMenu != null ? getBody(context) : Center(child: Text("Menu Loading..."),),
    );
  }

  getBody(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: List.generate(_mainMenu.length, (index) {
            return makeDashboardItem(context, index,  _mainMenu[index].rowNumber, _mainMenu[index].route, _mainMenu[index].title);
          }),
        ));
  }

  Card makeDashboardItem(BuildContext context, int index, int rowNumber, String route, String title) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: InkWell(
          onTap: () {
            _navigatePage(context, route, title);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 30.0,),
              Center(
                child: Text(rowNumber.toString(), style: TextStyle(fontSize: 40.0, color: Colors.white),),
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title, style: TextStyle(fontSize: 18.0, color: Colors.white,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigatePage(BuildContext context, String route, String title) {
    Navigator.pushNamed(context, route, arguments: title);
  }
}
