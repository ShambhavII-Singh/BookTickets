
import 'package:fluentui_icons/fluentui_icons.dart';  
import 'package:flutter/material.dart'; 
import 'package:travel_app/screens/homescreen.dart';
import 'package:travel_app/screens/profilepage.dart';
import 'package:travel_app/screens/searchscreen.dart';
import 'package:travel_app/screens/ticketdisplay.dart'; 


class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override  
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  static final List<Widget> _widgetOptions = <Widget>[
    
    const HomeScreen(), 
    const Searchscreen(),
    const Ticketdisplay(),
    const Profilepage()
  ];

  int _selectedIndex = 0; 

  void onTappingWidget(int index) { 
    setState(() { 
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex], 
      ), 

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selectedIndex, 
        onTap: onTappingWidget, 
        
        elevation: 10, 
        showSelectedLabels:
            false, 
        showUnselectedLabels:
            false, 
        selectedItemColor: const Color.fromARGB(255, 56, 55, 53),
        unselectedItemColor: const Color.fromARGB(255, 116, 115, 112), 
        type: BottomNavigationBarType.fixed, 
        items: const [ 
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "HOME"), 

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "SEARCH"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "TICKETS"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "PROFILE"),
        ], 
      ),
    );
  }
}
