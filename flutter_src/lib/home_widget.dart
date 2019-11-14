import 'package:flutter/material.dart';
import 'placeholder_widget.dart';


class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
 int _currentIndex = 0;
 final List<Widget> _children = [
   PlaceholderWidget(Colors.white),
   PlaceholderWidget(Colors.deepOrange),
   PlaceholderWidget(Colors.green)
 ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Image.asset('easyFinance_logo.jpeg', fit: BoxFit.cover),
     ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       currentIndex: _currentIndex,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.credit_card),
           title: new Text('Transactions'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           title: Text('Settings')
         )
       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}

