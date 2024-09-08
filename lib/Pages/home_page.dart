// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:swift_cafe/Pages/orderpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> beverages = [
    {
      'image': 'images/Coffee1.png',
      'name': 'Cappuccino',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
    {
      'image': 'images/Coffee2.png',
      'name': 'Latte',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
    {
      'image': 'images/Coffee3.png',
      'name': 'Iced Coffee',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
    {
      'image': 'images/Coffee1.png',
      'name': 'Green Tea',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
    {
      'image': 'images/Coffee2.png',
      'name': 'Smoothie',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
    {
      'image': 'images/Coffee3.png',
      'name': 'Mocha',
      'description': 'Espresso, Steamed Milk.',
      'reviews' : '4.9'

    },
  ];
  final List<Map<String, String>> beverages2 = [
    {
      'image': 'images/listcoffee.png',
      'name': 'Cappuccino',
      'description': 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top..',
      'reviews' : '4.9'
    },
    {
      'image': 'images/listcoffee.png',
      'name': 'Latte',
      'description': 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top..',
      'reviews' : '4.9'

    },
    {
      'image': 'images/listcoffee.png',
      'name': 'Iced Coffee',
      'description': 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top..',
      'reviews' : '4.9'

    },
    {
      'image': 'images/listcoffee.png',
      'name': 'Green Tea',
      'description': 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top..',
      'reviews' : '4.9'

    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/a.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 30, 42, 87).withOpacity(0.1),
                  const Color(0xFFCF7B4B).withOpacity(0.4),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'images/Glass.png',
              fit: BoxFit.cover, // Makes the image cover the whole screen
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row: Waving hand, Date, Name, Cart, Profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/bye.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20/12/2022",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              "Joshua Scanlan",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Define the action for cart button here
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset(
                                'images/cart.png',
                                width: 18,
                                height: 16.2,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            // Define profile action
                          },
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('images/boy.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Search Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search favorite Beverages',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                // Background Image (rectangle10.png)
                SizedBox(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Positioned.fill(
                    child: Image.asset(
                      'images/Rectangle10.png', 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 15,
                  left: 10,
                  child: Text(
                    "Most Popular Beverages",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: beverages.length,
                      itemBuilder: (context, index) {
                        final beverage = beverages[index];
                        return GestureDetector(
                          onTap: () {
                            // Define action for each card tap
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  OrderPage(coffeeImagePath: beverage['image']!,)),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 213,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        const Color(0xFFffffff)
                                            .withOpacity(0.44),
                                        const Color(0xFFffffff)
                                            .withOpacity(0.28),
                                        const Color(0xFFffffff)
                                            .withOpacity(0.40),
                                      ],
                                      stops: const [0.0, 0.48, 1.0],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black
                                            .withOpacity(0.1),
                                        spreadRadius:
                                            0.5, 
                                        blurRadius:
                                            10, 
                                        offset: const Offset(5,
                                            5),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(
                                        5),
                                        border: Border.all(color: Colors.white,width: 0.5)// Keeps your existing border radius
                                  ),
                                ),
                                Container(
                                  width: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage('images/Rectangle.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  right: 30,
                                  child: Image.asset(
                                    beverage['image']!,
                                    height: 128,
                                    width: 131,
                                  ),
                                ),
                                Positioned(
                                  bottom: 30,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        beverage['name']!,
                                        style: const TextStyle(
                                          color: Color(0xFFCDCDCD),
                                          fontSize: 18,
                                        ),
                                      ),
                                      

                                      Text(
                                        beverage['description']!,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            beverage['reviews']!,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),

                                          const SizedBox(width: 5,),
                                          Image.asset('images/star.png'),
                                          const SizedBox(width: 5,),

                                          const Text('(458)'),
                                          

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF66A35C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                
                
              ],
            ),
          ),
          const Positioned(
                  top: 540,
                  left: 10,
                  child: Text(
                    "Get it instantly",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
          Positioned(
                  top: 550,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: beverages2.length,
                      itemBuilder: (context, index) {
                        final beverage2 = beverages2[index];
                        return GestureDetector(
                          onTap: () {
                            // Define action for each card tap
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  OrderPage(coffeeImagePath: beverage2['image']!,)),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 390,
                                  height: 163,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black
                                            .withOpacity(0.1), // Shadow color
                                        spreadRadius:
                                            0.5, // How much the shadow spreads
                                        blurRadius:
                                            10, // How blurry the shadow is
                                        offset: const Offset(5,
                                            5), // Position of the shadow (x, y)
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(
                                        5),
                                        border: Border.all(color: Colors.white.withOpacity(0.2),width: 0.5)// Keeps your existing border radius
                                  ),
                                ),
                                Container(
                                  width: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage('images/Rectangle.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 240,
                                  
                                  child: Image.asset(
                                    beverage2['image']!,
                                    height: 128,
                                    width: 131,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        beverage2['name']!,
                                        style: const TextStyle(
                                          color: Color(0xFFCDCDCD),
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),

                                      Row(
                                        children: [
                                          Text(
                                            beverage2['reviews']!,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Image.asset('images/star.png'),
                                          const SizedBox(width: 5,),

                                          const Text('458'),
                                          const SizedBox(width: 5,),

                                          Image.asset('images/veg.png'),


                                        ],
                                      ),
                                      const SizedBox(height: 5,),
                                      SizedBox(width: 202,
                                        child: Wrap(
                                          children: [Text(
                                            beverage2['description']!,
                                            style: const TextStyle(
                                              color: Color(0xFFC0C0C0),
                                              fontSize: 10,
                                            ),
                                          ),]
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 45,
                                  child: GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                      width: 52,
                                      height: 19,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF66A35C),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 10,
                                  right: 58,
                                  child: Text('ADD', style: TextStyle(color: Colors.white),)
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
