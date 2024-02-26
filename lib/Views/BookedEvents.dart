import 'package:eventsap/Constants/Colors.dart';
import 'package:flutter/material.dart';
class BookedEventsPage extends StatelessWidget {
  const BookedEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  Container(
                    child: Text("Booked Events",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.black87),),
                  ),
                ],
              )
          ),
          Expanded(
            flex: 7,
              child: Container(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: navColor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5,),
                      Container(
                        width: 100,
                        child: Image.asset("Assets/images/pexels-sebastian-ervi-1763075.jpg",fit: BoxFit.fill,),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("End Of Year Party",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54),),
                          Row(
                            children: [
                              Icon(Icons.location_on_rounded,size: 15,),
                              Text("GrandState Hotel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black45),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_today_sharp,size: 15,),
                              Text("12/01/2024"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
            ),
           )
          )
        ],
      ),
    );
  }
}
