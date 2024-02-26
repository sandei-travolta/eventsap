import 'package:eventsap/Constants/Colors.dart';
import 'package:eventsap/Views/BookedEvents.dart';
import 'package:eventsap/Views/EventPosts.dart';
import 'package:eventsap/Views/EventsPage.dart';
import 'package:eventsap/Views/ProfilePage.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage=0;
  final List _pages=[
    EventsPage(),
    EventsPostsPage(),
    BookedEventsPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: navColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              setState(() {
                _currentPage=0;
              });
            }, icon: Icon(Icons.home,size: 30,)),
            IconButton(onPressed: (){
              setState(() {
                _currentPage=1;
              });
            }, icon: Icon(Icons.photo,size: 30,)),
            IconButton(onPressed: (){
              setState(() {
                _currentPage=2;
              });
            }, icon: Icon(Icons.library_books,size: 30,)),
            IconButton(onPressed: (){
              setState(() {
                _currentPage=3;
              });
            }, icon: Icon(Icons.person_2,size: 30,))
          ],
        ),
      ),
      body: _pages[_currentPage]
    );
  }
}
