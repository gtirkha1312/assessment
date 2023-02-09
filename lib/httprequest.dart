import 'dart:convert';

import 'package:assess/restaurant_model.dart';
import 'package:http/http.dart' as http;

class httpReq {
  dynamic fetchData() async {
    Uri myUrl = Uri.parse(
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=47.6204,-122.3491&radius=2500&type=restaurant&key=AIzaSyCFM57HPVEKYnjJkG9FKrSihPLfbH7WFzo");
    var response = await http.get(myUrl);
    var decodedResp = jsonDecode(utf8.decode(response.bodyBytes));
    return decodedResp;
  }

  List<Map<String, dynamic>> result = [
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 70,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 70,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 52,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": true
    },
    {
      "icnoUrl":
          "https://as2.ftcdn.net/v2/jpg/03/91/05/17/1000_F_391051794_NAuvgn0FM1XDcePb4hiLgcJ1hIZYTGSh.jpg",
      "name": "Restaurant Name",
      "dishname": "Pizza",
      "price": 200,
      "time": 70,
      "rating": 4.4,
      "comment": "Well Sanitized",
      "isPromoted": false
    },
  ];

  List<Restaurant> getRestaurant() {
    List<Restaurant> list = [];
    for (var element in result) {
      Restaurant rest = Restaurant(
        icnoUrl: element["icnoUrl"].toString(),
        dishname: element["dishname"].toString(),
        name: element["name"].toString(),
        price: element["price"].toString(),
        time: element["time"].toString(),
        rating: element["rating"].toString(),
        comment: element["comment"].toString(),
        isPromoted: element["isPromoted"],
      );
      list.add(rest);
    }
    return list;
  }
}
