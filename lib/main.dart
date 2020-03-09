import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'mapasset.dart' ;
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      debugShowCheckedModeBanner: false,
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
  _launchURL() async {
    const url = 'http://www.udgam.nitsikkim.ac.in/udgam20';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text('Failed to Load!')
      ) );
    }
  }
  var button_style = TextStyle(
    fontSize: 13 ,
    fontWeight: FontWeight.w100 ,
    color: Colors.purpleAccent[700]    ,
  ) ;
  int _counter = 0;
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  void _incrementCounter() {
    setState(() {
   });
  }

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body:
     CustomScrollView(
       slivers: <Widget>[
         SliverAppBar(
           title: Text("ABOUT US") ,
           snap: false,
           flexibleSpace: Image.asset('assets/Kanchenjunga_India.jpg' , fit : BoxFit.fill ,),
           floating: true,
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
         SliverToBoxAdapter(
           child: SizedBox(height: 30),
         ) ,
    SliverToBoxAdapter(
             child:
                 Column(
                   mainAxisSize: MainAxisSize.min,
                   children : [
                     InkWell(
                       splashColor: Colors.blue,
                     child : MaterialButton(
                       shape : StadiumBorder() ,
                       highlightElevation: 0,
                       elevation: 20,
                       color: Colors.purpleAccent[100],
                child :
                     Text("SEE THE LOCATION" , style:TextStyle(color: Colors.white , fontStyle: FontStyle.italic),) ,
                 onPressed: (){
                       Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => mapasset()),
                   );
                     },
                   ) ,
                 ) ,

                InkWell(
                  splashColor: Colors.purpleAccent ,
                  child :
                    MaterialButton(
                      shape : StadiumBorder() ,
                      highlightElevation: 0,
                      elevation: 20,
                      color: Colors.indigo[300],
                       child: Text("GO TO THE WEBSITE"  , style:TextStyle(color: Colors.white , fontStyle: FontStyle.italic), ),
                      onPressed: (){
                        _launchURL() ;
                      },
                     )
                )
                ] ,
                 ) ,
    ) ,
         SliverToBoxAdapter(
           child: Container(
             height: 50,
             child: Align(
               alignment: Alignment.bottomCenter,
               child : Text("UDGAM2020\n@NITSIKKIM" ,
                 style: TextStyle(
                   fontSize: 12 ,
                   fontWeight: FontWeight.w200,
                   color:  Colors.grey ,
                 ),
               ) ,
             ) ,
           ),
         )
       ],
       ) ,
   );
  }
}

