// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: food_home(),
  ));
}

final Color background = Color.fromARGB(255, 250, 214, 100);
final Color fill = const Color.fromARGB(255, 238, 236, 238);
final List<Color> gradient = [
  background,
  background,
  fill,
  fill,
];
final double fillPercent = 56.23; // fills 56.23% for container from bottom
final double fillStop = (100 - fillPercent) / 100;
final List<double> stops = [0.0, fillStop, fillStop, 1.0];

class food_home extends StatefulWidget {
  const food_home({super.key});

  @override
  State<food_home> createState() => _food_homeState();
}

class _food_homeState extends State<food_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 236, 238),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 250, 214, 100),
            toolbarHeight: 100,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 45, left: 10),
              child: Image(
                  width: 5,
                  height: 5,
                  image: AssetImage('assets/images/uu.png')),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 100, top: 9),
                child: Icon(
                  Icons.shopping_cart,
                  size: 37,
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Color.fromARGB(255, 250, 214, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Chromicle',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      'Hunting For Delicious food?',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                      child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search,color: Colors.black,),
                        hintText: 'Search for anything',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradient,
                    stops: stops,
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                )),

            // List of Foods
            Container(
              height: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 250, 214, 100),
                            elevation: 0,
                            shadowColor: Colors.white,
                            fixedSize: Size(120, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Text(
                          'Burger',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shadowColor: Colors.white,
                            fixedSize: Size(120, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Text(
                          'Noodles',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shadowColor: Colors.white,
                            fixedSize: Size(120, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Text(
                          'Biriyani',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shadowColor: Colors.white,
                            fixedSize: Size(120, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {},
                        child: Text(
                          'Burger',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 350,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        // height: 200, width: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/bg2.jpg'))),
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 110, top: 9, left: 140),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 110, top: 220),
                              child: Text(
                                ' \$ 18 ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 58, top: 2, left: 2),
                              child: Text(
                                'Delish Bloody',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // height: 200, width: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/burgr.jpg'))),
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 110, top: 9, left: 140),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 110, top: 220),
                              child: Text(
                                ' \$ 28 ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 58, top: 2, left: 2),
                              child: Text(
                                'Iam Burger',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            // Bottom
            Container(
              color: Colors.white,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '2 item(s)',
                            style: TextStyle(
                                fontSize: 25,
                                color: const Color.fromARGB(255, 235, 212, 7)),
                          ),
                        ),
                        Text(
                          'Added to cart',
                          style: TextStyle(fontSize: 21),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, bottom: 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 250, 214, 100),
                              elevation: 0,
                              shadowColor: Colors.white,
                              fixedSize: Size(140, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Text(
                            'Place Order',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ]))
        ],
      )),
    );
  }
}




//  Text('Hello, Chromicle',style: TextStyle(fontSize: 30,color: Colors.black),),
//                   Text('Hunting For Delicious food?',style: TextStyle(fontSize: 20,color: Colors.black),)