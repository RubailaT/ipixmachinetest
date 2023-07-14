import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ipixmachinetest/restaurant.dart';
import 'package:ipixmachinetest/services/api.dart';

class RestaurantApiService {
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
}