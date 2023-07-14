 import 'package:flutter/material.dart';
import 'package:ipixmachinetest/restaurant.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({Key? key, required this.details}) : super(key: key);

  final Restaurant details;




  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {


  // List rest=[
  //   Restaurant(
  //       name: "name", image: "images/logistic.png", rating:2.5, neighborhood: "neighborhood", cuisineType: "cuisineType",
  //     address:" address",
  //     operatingHours: ["1,2,3"],reviews: ["good"],  comments: ["ok"])];
  @override
  Widget build(BuildContext context) {
    // widget.details.reviews[index]['name'];
    final Map<String, String> operatingHours = {
      "Monday": "5:30 pm - 11:00 pm",
      "Tuesday": "5:30 pm - 12:00 am",
      "Wednesday": "5:30 pm - 12:00 am",
      "Thursday": "5:30 pm - 12:00 am",
      "Friday": "5:30 pm - 12:00 am",
      "Saturday": "12:00 pm - 4:00 pm, 5:30 pm - 12:00 am",
      "Sunday": "12:00 pm - 4:00 pm, 5:30 pm - 11:00 pm"
    };

    final List<String> operatingHoursList = [];
    operatingHours.forEach((day, hours) {
      final formattedHours = '$day: $hours';
      operatingHoursList.add(formattedHours);
    });

    print(operatingHoursList);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                 height:150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:  NetworkImage(widget.details.image!)),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(widget.details.name!,style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 30),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              height:30,
                              width: MediaQuery.of(context).size.width/5,

                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)

                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(widget.details.name!),
    ),
                                  SizedBox(width: 5,),
                                  Icon(Icons.star,color: Colors.white,size: 15,),

                                ],
                              ),

                            ),
                          )

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 220,top: 30),
                        child: Text(widget.details.neighborhood!,style: TextStyle(
                  fontSize: 20),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 9,
                              child: Container(
                                  height:13,
                                  child: Image(image: AssetImage("images/fork.png"),)),
                            ),
                            SizedBox(width: 10,),
                            Text(widget.details.cuisineType!,style: TextStyle(
                                fontSize: 20),),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right:280),
                        child: Text(widget.details.address!,style: TextStyle(
                            fontSize: 20),),),
     Text(operatingHours.toString(),style: TextStyle(
    fontSize: 20),),

//                       Column(
//                         children: rest[index].operatingHours.map<Widget>((e)=>
//                             Padding(
//                               padding: const EdgeInsets.only(right: 300,top: 20),
//                               child: Text(e,style: TextStyle(
//                                   fontSize: 20),),
//                             ),).toList(),
//                       ),
// Column(
//   children:rest[index].reviews.map<Widget>((e)=>
//                       Padding(
//                         padding: const EdgeInsets.only(right: 300,top: 20),
//                         child: Text(e,style: TextStyle(
//                             fontSize: 20),),
//                   ), ).toList(),
// ),


                    ],
                  ),
                ));







  }
}
