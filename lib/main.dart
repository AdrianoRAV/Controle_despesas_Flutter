import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  Widget _bottomAction(IconData icon){
    return InkWell (
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon),
      ),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento dos icones
          children: <Widget>[
          _bottomAction(FontAwesomeIcons.history),//icones
            _bottomAction(FontAwesomeIcons.chartPie),
            SizedBox(width: 48.0),
            _bottomAction(FontAwesomeIcons.wallet),
            _bottomAction(Icons.settings),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      body: _body(),
    );
}
  Widget _body(){
    return SafeArea(
      child: Column(
        children: <Widget>[
          _selector(),
          _expenses(),
          _graph(),
          _list(),
        ],
      ),
    );
  }
  Widget _selector() => Container();

  Widget _expenses() {
    return Column(
      children: <Widget>[
        Text("\$2361,41",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
        ),
        Text("Total despesas",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 46.0,
          color: Colors.blueGrey,
        ),
        )
      ]
    );
  }
  Widget _graph() => Container();

  Widget _list() => Container();

}
