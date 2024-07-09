import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": Container(), "title": "Home"},
    {"screen": Container(), "title": "Catogories"},
    {"screen": Container(), "title": "Basket"},
    {"screen": Container(), "title": "favourite"},
    {"screen": Container(), "title": "Account"},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "ma",
                style: TextStyle(
                    color: Colors.blue, fontFamily: "Airbnb", fontSize: 26),
              ),
              Text(
                "x",
                style: TextStyle(
                    color: Colors.red, fontFamily: "Airbnb", fontSize: 26),
              ),
              SizedBox(
                width: 150,
              ),
              Icon(Icons.favorite_border),
              SizedBox(width: 17),
              Icon(CupertinoIcons.bell)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedScreenIndex,
          onTap: _selectScreen,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_sharp), label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: 'Basket'),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Colors.black)),
                hintText: "What are you looking for?",
                suffixIcon: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.document_scanner_outlined)),
                prefixIcon: Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img.png'),
                    ),
                    Text(
                      "0n Offer",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img_1.png'),
                    ),
                    Text(
                      "Kids",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img_2.png'),
                    ),
                    Text(
                      "Women",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img_3.png'),
                    ),
                    Text(
                      "Men",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img_4.png'),
                    ),
                    Text(
                      "UR7",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img.png'),
                    ),
                    Text(
                      "0n Offer",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img.png'),
                    ),
                    Text(
                      "0n Offer",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img.png'),
                    ),
                    Text(
                      "0n Offer",
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Airbnb",
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 500,
            color: CupertinoColors.systemBlue,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Max Mania Sale! 6500+ Styles Under 399+ Extra 200",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      "off on 1999 Code:MMS200",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.greaterthan,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 240.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
              viewportFraction: 1,
            ),
          ),
        ]));
  }
}
