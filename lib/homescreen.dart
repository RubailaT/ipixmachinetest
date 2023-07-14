import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ipixmachinetest/restaurant.dart';

import 'package:ipixmachinetest/restaurantdetails.dart';
import 'package:http/http.dart' as http;

import 'services/apiservice.dart';

RModel? restaurantModel;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RestaurantApiService apiService = RestaurantApiService();

  List Rest = [];
  @override
  void initState() {
    print('calling');

    super.initState();

    fetchRestaurants();
    // fetchRestaurants();
  }

  Future<RModel> fetchRestaurants() async {
    print('start');
    Uri url = Uri.parse('https://run.mocky.io/v3/b91498e7-c7fd-48bc-b16a-5cb970a3af8a');
    print(url);

    var response = await http.get(url);
    print("response$response");
    if (response.statusCode == 200) {
      return RModel.fromjson(jsonDecode(response.body));
      // final data =   jsonDecode(response.body);
      // print("data${data}");
      // final restaurants = data['restaurants'];
      //
      // List<Restaurant>listData = List<Restaurant>.from(
      //     data['restaurants'].map((restaurant) => Restaurant.fromJson(restaurant)).toList());
      // print('listdata$listData');
      //return listData;
    } else {
      throw Exception('Failed to fetch restaurants');
    }
  }
  // fetchRestaurant() async {
  //   restaurantModel = await apiService.fetchRestaurants();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESTAURANTS"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(icon: const Icon(Icons.login_outlined), onPressed: () {}),
          Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("log out"),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            restaurantModel == null
                ? CircularProgressIndicator()
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: restaurantModel!.restaurant!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  " snapshot.data![index].image.toString()",

                                  // snapshot.data![index].image.toString()==''?"https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/2500px-Solid_blue.svg.png":snapshot.data![index].image.toString()),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantDetails(
                                      //   details: Restaurant(
                                      //
                                      //     image: snapshot.data!['photograph'],
                                      //    // reviews: snapshot.data![index]['reviews'],
                                      //     address: snapshot.data!['address'],
                                      //   //  operatingHours: snapshot.data![index]['operating_hours'],
                                      //     neighborhood: snapshot.data![index]['neighborhood'],
                                      //     cuisineType: snapshot.data![index]['cuisine_type'],
                                      //     name: snapshot.data![index]['name'],
                                      //     rating: snapshot.data!['rating'],
                                      //
                                      //   ),
                                      // )));
                                    },
                                    child: Text(
                                      "napshot.data![index].name.toString()",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Center(
                                              child: Text(
                                                  "snapshot.data![index]['reviews'][0]['rating'].toString()")),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 9,
                                  child: Container(
                                      height: 13,
                                      child: Image(
                                        image: AssetImage("images/fork.png"),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "snapshot.data![index].cuisineType.toString()",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 280),
                              child: (Text(
                                "snapshot.data![index].address.toString()",
                                style: TextStyle(fontSize: 20),
                              ))),
                        ],
                      );
                    },
                  ),
            // FutureBuilder<List<RModel>>(
            //   future: fetchRestaurants(),
            //   builder: (context, AsyncSnapshot<List<RModel>>snapshot) {
            //
            //     if(snapshot.hasData){
            //       return ListView.builder(
            //           shrinkWrap: true,
            //           physics: NeverScrollableScrollPhysics(),
            //           itemCount: snapshot.data?.length,
            //           itemBuilder: (context,index){
            //             return Column(mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   height:150,
            //                   decoration: BoxDecoration(
            //                     image: DecorationImage(
            //                       fit: BoxFit.cover,
            //                       image:  NetworkImage(
            //
            //                         "   snapshot.data![index].image.toString()",
            //
            //                         // snapshot.data![index].image.toString()==''?"https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/2500px-Solid_blue.svg.png":snapshot.data![index].image.toString()),),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //
            //                 SizedBox(height: 30,),
            //
            //                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Expanded(
            //                       child:Padding(
            //                         padding: const EdgeInsets.only(left: 30),
            //                         child: InkWell(
            //                           onTap: () {
            //                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantDetails(
            //                             //   details: Restaurant(
            //                             //
            //                             //     image: snapshot.data!['photograph'],
            //                             //    // reviews: snapshot.data![index]['reviews'],
            //                             //     address: snapshot.data!['address'],
            //                             //   //  operatingHours: snapshot.data![index]['operating_hours'],
            //                             //     neighborhood: snapshot.data![index]['neighborhood'],
            //                             //     cuisineType: snapshot.data![index]['cuisine_type'],
            //                             //     name: snapshot.data![index]['name'],
            //                             //     rating: snapshot.data!['rating'],
            //                             //
            //                             //   ),
            //                             // )));
            //                           },
            //                           child: Text("snapshot.data![index].name.toString()",style: TextStyle(
            //                               fontWeight: FontWeight.bold,fontSize: 25 ,
            //                               overflow: TextOverflow.ellipsis
            //
            //                           ),),
            //                         ),
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(right: 30),
            //                       child: Container(
            //                         height:30,
            //                         width: MediaQuery.of(context).size.width/5,
            //
            //                         decoration: BoxDecoration(
            //                             color: Colors.green,
            //                             borderRadius: BorderRadius.circular(15)
            //
            //                         ),
            //                         child: Row(
            //                           children: [
            //                             Expanded(
            //                               child: Padding(
            //                                 padding: const EdgeInsets.symmetric(horizontal: 8),
            //                                 child: Center(child: Text("snapshot.data![index]['reviews'][0]['rating'].toString()")),
            //                               ),
            //                             ),
            //                             SizedBox(width: 5,),
            //                             Icon(Icons.star,color: Colors.white,size: 15,),
            //                           ],
            //                         ),
            //
            //                       ),
            //                     )
            //
            //                   ],
            //                 ),
            //                 SizedBox(height: 30,),
            //                 Padding(
            //                   padding: const EdgeInsets.all(28.0),
            //                   child: Row(
            //                     children: [
            //                       CircleAvatar(
            //                         backgroundColor: Colors.grey,
            //                         radius: 9,
            //                         child: Container(
            //                             height:13,
            //                             child: Image(image: AssetImage("images/fork.png"),)),
            //                       ),
            //                       SizedBox(width: 10,),
            //                       Text("snapshot.data![index].cuisineType.toString()",style: TextStyle(
            //                           fontSize: 20),),
            //
            //                     ],
            //                   ),
            //                 ),
            //
            //                 Padding(
            //                     padding: const EdgeInsets.only(right:280),
            //                     child: (Text("snapshot.data![index].address.toString()",style: TextStyle(
            //                         fontSize: 20),))),
            //
            //               ],
            //             );
            //           });
            //
            //     }else{
            //       return CircularProgressIndicator();
            //     }
            //   },),
          ],
        ),
      ),
    );
  }
}