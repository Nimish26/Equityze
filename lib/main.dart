import 'package:equityze/lib/getting_started_screen.dart';
import 'package:equityze/lib/home_page.dart' as home_page;
import 'package:flutter/material.dart';
import 'package:equityze/lib/stockabulary.dart' as stockabulary;
import 'package:equityze/lib/analysis.dart' as analysis;


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
              title:"StockBook",
              home: GettingStartedScreen(),

              ),
          ),
        );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller=new TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: SizedBox(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('             Equityze' ),
                ),
              ),
            ),
          ),
        ),

        backgroundColor: Colors.teal,
        elevation: 0.0,
        bottom: new TabBar(
          controller: controller ,
            tabs: <Widget>[
          new Tab(icon: new Icon(Icons.book)),
          new Tab(icon: new Icon(Icons.list)),
          new Tab(icon: new Icon(Icons.new_releases_sharp)),
        ]),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
        new home_page.HomePage(),
        new stockabulary.Stockabulary(),
        new analysis.Analysis(),
      ],
    )
    );
  }
}

