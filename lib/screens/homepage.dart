import 'package:car_rental/screens/chatpage.dart';
import 'package:flutter/material.dart';

import '../common/cardWid.dart';
import '../common/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _pageNames = [    Center(child: Text('Car Rental App',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,fontWeight: FontWeight.bold),),),    Center(child: Text('Favs',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,fontWeight: FontWeight.bold),),),    Center(child: Text('Chat',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,fontWeight: FontWeight.bold),),),    Center(child: Text('Settings',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,fontWeight: FontWeight.bold),),)  ];
  final _pageOptions = [    CardList(cards: cards), Center(child: Text('Favs'),),    ChatPage(),    Center(child: Text('Settings'),)  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? PreferredSize(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0,left: 8.0,right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _pageNames[_selectedIndex],
                InkWell(
                  onTap: () {
                    //Code à exécuter lorsque l'utilisateur clique sur le cercle
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://www.example.com/profile_picture.jpg"),
                      ),
                    ),
                  ),
                ),

                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.ac_unit),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.access_alarm),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.accessibility),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.account_balance),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.adb),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(120),
      ) : PreferredSize(child: Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 8.0,right: 8.0),
            child: Row(
              children: [
                _pageNames[_selectedIndex],
                InkWell(
                  onTap: () {
                    //Code à exécuter lorsque l'utilisateur clique sur le cercle
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://www.example.com/profile_picture.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ), preferredSize: Size.fromHeight(70)),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}