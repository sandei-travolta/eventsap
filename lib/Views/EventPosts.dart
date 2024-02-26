import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
class EventsPostsPage extends StatelessWidget {
  const EventsPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: navColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Search Event Posts',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18
                              ),
                              prefixIcon: Container(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.search),
                              ),
                            ),
                          )
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: navColor.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Icon(Icons.filter_list)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
            flex: 9,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                 child: Container(
                   height: 350,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.black12,
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       const SizedBox(height: 3,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           const SizedBox(width: 10,),
                           Container(
                             height: 30,
                             width: 30,
                             decoration: BoxDecoration(
                               color: Colors.black,
                               shape: BoxShape.circle,
                             ),
                             child: Container(
                                 height: 20,
                                 width: 20,
                                 child: Image.asset("Assets/images/ProfilePictureExample.jpg",fit: BoxFit.fill,)),
                           ),
                           const SizedBox(width: 10,),
                           Text(
                             "Party Hub",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                           ),
                           )
                         ],
                       ),
                       const SizedBox(height: 5,),
                       Container(
                         height: 240,
                           child: Image.asset("Assets/images/pexels-wendy-wei-1494665.jpg",fit:BoxFit.fill,)
                       ),
                       const SizedBox(height: 5,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             height: 40,
                             width: 110,
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.favorite_border),
                                 Icon(Icons.chat),
                               ],
                             ),
                           ),
                           Container(
                             height: 40,
                             width: 90,
                           ),
                           Container(
                             height: 40,
                             width: 90,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Icon(Icons.bookmark_border),
                                 const SizedBox(width: 3,)
                               ],
                             ),
                           )
                         ],
                       ),
                       const SizedBox(height: 5,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           const SizedBox( width: 20,),
                           Text("145 Likes",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black38,fontSize: 15),),
                         ],
                       )
                     ],
                   ),
                 ),
               );
              }
              )
          )
        ],
      ),
    );
  }
}
