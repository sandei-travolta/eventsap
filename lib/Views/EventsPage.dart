import 'package:carousel_slider/carousel_slider.dart';
import 'package:eventsap/Constants/Colors.dart';
import 'package:eventsap/Constants/filters.dart';
import 'package:eventsap/Models/EventModel.dart';
import 'package:flutter/material.dart';
class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
            child: Container(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Row(
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
                            hintText: 'Search Event',
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
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 5,),
                        Text("Filter by Category",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)
                      ],
                    ),
                    const SizedBox(height: 2,),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: eventFilters.length,
                          itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: navColor
                            ),
                            child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                              child: Text(eventFilters[index]),
                            ),
                          ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              )
            )),
        Expanded(flex:8,child: Container(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 380,
                  decoration: BoxDecoration(
                    color: navColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 250,
                          child: Image.asset("Assets/images/pexels-danik-prihodko-7304689.jpg",fit: BoxFit.fill,),
                        ),
                      Container(height: 3,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on_sharp),
                                    const SizedBox(width: 5,),
                                    Text("GrandState Hotel",style: TextStyle(color: Colors.black26,fontSize: 17,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 3),
                                    Icon(Icons.calendar_month_sharp,size: 20,),
                                    const SizedBox(width: 7,),
                                    Text("10/01/2024",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.w400,fontSize: 15),),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  const SizedBox(width: 3,),
                                  Icon(Icons.people),
                                    const SizedBox(width: 5,),
                                  Text("100",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.w400,fontSize: 15),)
                                ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  children: [
                                    const SizedBox(width: 8,),
                                    Text("2024 New Year Party",style: TextStyle(fontSize: 27,color: Colors.black87,fontWeight: FontWeight.w700),),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite_border_outlined),
                                    const SizedBox(width: 5,),
                                    Text("150"),
                                    const SizedBox(width: 3,)
                                  ],
                                ),
                                const SizedBox(
                                  height: 70,
                                ),
                                Icon(Icons.bookmark_border)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )),
      ],
    );
  }
}
