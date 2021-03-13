import 'package:flutter/material.dart';
// import 'package:intl/date_symbol_data_file.dart';
import "./widgets/concretized_service_list.dart";
// import 'package:intl/intl.dart';
import './widgets/customized_dropdown_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(22, 110, 229, 1),
          primaryColorDark: Color.fromRGBO(10, 47, 89, 1),
          accentColor: Color.fromRGBO(243, 139, 25, 1),
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // title: Image(
        //   image: AssetImage("assets/images/logo.png"),
        // ),
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: () => {})],
      ),
      body: Column(
        children: [
          Divider(
            height: 30,
          ),
          Text(
            "Pedidos concretados",
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topRight,
            child: CustomizedDropDownButton(
              ["Pedidos concretados", "Pedidos cancelados", "Pedidos activos"],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ConcretizedServiceList(),
          ),
        ],
      ),
    );
  }
}
