import 'package:assess/httprequest.dart';
import 'package:assess/restaurant_model.dart';
import 'package:assess/retaurantTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Restaurant> list = httpReq().getRestaurant();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Column(
    //       children: [
    //         TextField(
    //           decoration: InputDecoration(
    //               border: OutlineInputBorder(
    //                 borderSide: BorderSide(color: Colors.grey),
    //               ),
    //               prefixIcon: Icon(Icons.search),
    //               hintText: ("Search nearby restaurants")),
    //         ),
    //         Expanded(
    //           child: ListView.builder(
    //             itemBuilder: (context, index) {
    //               return RestauranTile(restaurant: list[index]);
    //             },
    //             itemCount: list.length,
    //             shrinkWrap: true,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: ("Search nearby restaurants")),
              ),
              SizedBox(height: 8),
              ...list.map((e) => RestauranTile(restaurant: e))
            ],
          ),
        ),
      ),
    );
  }
}
