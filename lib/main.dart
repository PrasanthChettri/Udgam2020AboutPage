import 'package:flutter/material.dart';

void main() => runApp(MyApp());
var about_page = """
         AAAAAHmm. We’re having trouble finding that site.

We can’t connect to the server at duckduckgo.com.

If that address is correct, here are three other things you can try:

    TryGg again later.
    Check your network connection.
    If you are connected but behind a firewall, check that Firefox has permission to access the Web.
        AAAAAHmm. We’re having trouble finding that site.

We can’t connect to the server at duckduckgo.com.

If that address is correct, here are three other things you can try:

    TryGg again later.
    Check your network connection.
    If you are connected but behind a firewall, check that Firefox has permission to access the Web.
        AAAAAHmm. We’re having trouble finding that site.

We can’t connect to the server at duckduckgo.com.

If that address is correct, here are three other things you can try:

    TryGg again later.
    Check your network connection.
    If you are connected but behind a firewall, check that Firefox has permission to access the Web.
       AAAAAHmm. We’re having trouble finding that site.

We can’t connect to the server at duckduckgo.com.

If that address is correct, here are three other things you can try:

    TryGg again later.
    Check your network connection.
    If you are connected but behind a firewall, check that Firefox has permission to access the Web.

A
""" ;
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
      ) ,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: <Widget>[
         SliverAppBar(
           title: Text("ABOUT US") ,
           flexibleSpace: Image.asset('assets/Kanchenjunga_India.jpg'),
           floating: false,
           expandedHeight: 265 ,
           centerTitle: true,
           backgroundColor: Colors.white70,
           leading: IconButton(
             onPressed: () {},
             icon: Icon(Icons.arrow_back),
           ),
        ),
         SliverToBoxAdapter(
        child :
                 Card(
                   elevation: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                 child :
                     Container(
                     decoration : BoxDecoration(
                       gradient: LinearGradient(
                         colors: [Colors.purpleAccent[100] , Colors.indigo[400]] ,
                       )
                     ) ,
                     height: 100,
                      width: 10,
                      child:
                            Center(
                              child : Text("UDGAM 2020" ,
                             style:
                                 TextStyle(
                                         color: Colors.grey[300],
                                         fontWeight: FontWeight.w900,
                                         fontStyle: FontStyle.italic,
                                         fontSize: 40),
                              ) ,
                            )
                   )
               ,)

       ) ,
       SliverToBoxAdapter(
         child :
             Padding(
               padding: EdgeInsets.all(30),
           child : Text(about_page) ,
         ) ,
       ) ,
     ],
   ),
  ) ;
  }
}
