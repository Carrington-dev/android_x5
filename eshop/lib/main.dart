import 'package:flutter/material.dart';
import 'package:eshop/side_bar.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(EShop());
}

class EShop extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
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
  int _counter = 0;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: SideBarNav(),


      appBar: AppBar(


        elevation: 0,
        titleSpacing: 0,
        backgroundColor: HexColor("#F33A31"),
        title: Text("Oftmart"),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: (){
            //h
          }),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            //h
          }),
          IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){
            //h
          }),
        ],
      ),
      body: Center(
        child: Text("Home Centered"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: HexColor("#F33A31"),
        child: Icon(Icons.camera),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.message, color: Colors.black45),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.view_list, color: Colors.black45),
              onPressed: () {},
            ),
            SizedBox(width: 25),
            IconButton(
              icon: Icon(Icons.call, color: Colors.black45),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.black45),
              onPressed: () {},
            ),
          ],
        ),
      ),


    );
  }
}
