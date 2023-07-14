//
// class RModel{
//   List<Restaurant>? restaurant;
//   RModel({this.restaurant});
//   RModel.fromjson(Map<String,dynamic>json){
//     if(json['restaurants']!=null){
//       restaurant=<Restaurant>[];
//       json['restaurants'].foreach((v){
//     restaurant!.add(Restaurant.fromJson(v));
//     });
//     }
//     }
// Map<String,dynamic> toJson(){
//     final Map<String,dynamic>data=<String,dynamic>{};
//     if(restaurant!=null){
//       data['restaurants']=restaurant!.map((v)=>v.toJson()).toList();
// }
//     return data;
//     }
// }
// class Restaurant {
//   String? id;
//   String? name;
//   String? image;
//   double? rating;
//   String? neighborhood;
//   String? cuisineType;
//   String? address;
//
//   Restaurant({
//     this.id,
//     this.name,
//     this.image,
//     this.rating,
//     this.neighborhood,
//     this.cuisineType,
//     this.address,
//   });
//
//   Restaurant.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['photograph'];
//     rating = json['rating'];
//     neighborhood = json['neighborhood'];
//     cuisineType = json['cuisine_type'];
//     address = json['address'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['id'] = id;
//     data['name'] = name;
//     data['photograph'] = image;
//     data['rating'] = rating;
//     data['neighborhood'] = neighborhood;
//     data['cuisine_type'] = cuisineType;
//     data['address'] = address;
//     return data;
//   }



// class Restaurant {
//    String? id;
//    String? name;
//  String ?image;
//  double ?rating;
//  String ?neighborhood;
//  String ? cuisineType;
//  String ? address;
//  // final Map ? operatingHours;
//   //final List<Map> ? reviews;
//
//   Restaurant({
//      this.id,
//      this.name,
//      this.image,
//      this.rating,
//      this.neighborhood,
//      this.cuisineType,
//      this.address,
//     // required this.operatingHours,
//     // required this.reviews,
//   });
//
//
//
//
//    Restaurant.fromJson(Map<String, dynamic> json) {
//
//       id:json ['id'];
//       name: json['name'];
//       image: json['photograph'];
//       rating: json['rating'];
//       neighborhood: json['neighborhood'];
//       cuisineType: json['cuisine_type'];
//       address: json['address'];
//       // operatingHours: List<String>.from(json['operating_hours']),
//       // reviews: [],
//       //
//       // reviews: List<String>.from(json['reviews']),
//
//   }
//    Map<String,dynamic> toJson(){
//      final Map<String,dynamic>data=<String,dynamic>{};
//      data['id']=id;
//      data['name']=name;
//      data['photograph']=image;
//      data['rating']=rating;
//      data['eighborhood']=neighborhood;
//      data['cuisine_type']= cuisineType;
//      data['address']= address;
//      return data;
//    }
//
// }
//
// class RModel{
// List<Restaurant>? restaurant;
// RModel({this.restaurant});
// RModel.fromjson(Map<String,dynamic>json){
// if(json['restaurants']!=null){
// restaurant=<Restaurant>[];
// json['restaurants'].foreach((v){
// restaurant!.add(Restaurant.fromJson(v));
// });
// }
// }
// Map<String,dynamic> toJson(){
// final Map<String,dynamic>data=<String,dynamic>{};
// if(restaurant!=null){
// data['restaurants']=restaurant!.map((v)=>v.toJson()).toList();
// }
// return data;
// }
// }
//
//
// class Restaurant {
// String ?id;
// String ?name;
// String ?image;
// double ?rating;
// String ?neighborhood;
// String ? cuisineType;
// String ? address;
// // final Map ? operatingHours;
// //final List<Map> ? reviews;
//
// Restaurant({
// this.id,
// this.name,
// this.image,
// this.rating,
// this.neighborhood,
// this.cuisineType,
// this.address,
// // required this.operatingHours,
// // required this.reviews,
// });
//
//
//
//
// Restaurant.fromJson(Map<String, dynamic> json) {
//
// id:json ['id'];
// name: json['name'];
// image: json['photograph'];
// rating: json['rating'];
// neighborhood: json['neighborhood'];
// cuisineType: json['cuisine_type'];
// address: json['address'];
// // operatingHours: List<String>.from(json['operating_hours']),
// // reviews: [],
// //
// // reviews: List<String>.from(json['reviews']),
//
// }
// Map<String,dynamic> toJson(){
// final Map<String,dynamic>data=<String,dynamic>{};
// data['id']=id;
// data['name']=name;
// data['photograph']=image;
// data['rating']=rating;
// data['eighborhood']=neighborhood;
// data['cuisine_type']= cuisineType;
// data['address']= address;
// return data;
// }
//
// }

class RModel{
List<Restaurant>? restaurant;
RModel({this.restaurant});
RModel.fromjson(Map<String,dynamic>json){
if(json['restaurants']!=null){
restaurant=<Restaurant>[];
json['restaurants'].foreach((v){
restaurant!.add(Restaurant.fromJson(v));
});
}
}
Map<String,dynamic> toJson(){
final Map<String,dynamic>data=<String,dynamic>{};
if(restaurant!=null){
data['restaurants']=restaurant!.map((v)=>v.toJson()).toList();
}
return data;
}
}


class Restaurant {
String ?id;
String ?name;
String ?image;
double ?rating;
String ?neighborhood;
String ? cuisineType;
String ? address;
// final Map ? operatingHours;
//final List<Map> ? reviews;

Restaurant({
this.id,
this.name,
this.image,
this.rating,
this.neighborhood,
this.cuisineType,
this.address,
// required this.operatingHours,
// required this.reviews,
});




Restaurant.fromJson(Map<String, dynamic> json) {

id:json ['id'];
name: json['name'];
image: json['photograph'];
rating: json['rating'];
neighborhood: json['neighborhood'];
cuisineType: json['cuisine_type'];
address: json['address'];
// operatingHours: List<String>.from(json['operating_hours']),
// reviews: [],
//
// reviews: List<String>.from(json['reviews']),

}
Map<String,dynamic> toJson(){
final Map<String,dynamic>data=<String,dynamic>{};
data['id']=id;
data['name']=name;
data['photograph']=image;
data['rating']=rating;
data['eighborhood']=neighborhood;
data['cuisine_type']= cuisineType;
data['address']= address;
return data;
}

}
