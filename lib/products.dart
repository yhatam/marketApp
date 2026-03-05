import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapp/category.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  var cities = [
    "Please select an address",
    "Yediç's Home ",
    "Yediç's Office",
  ];
  var selectedCity = "Please select an address";
  List imgList = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/01/20/15/06/oranges-1995056_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/07/22/09/59/fruits-1534494_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434_960_720.jpg",
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 100.0,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: true,
            reverse: false,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: imgList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 1000,
                  height: 800,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                        height: 100.0,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(imgList, (index, url) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index ? Colors.red.shade400 : Colors.grey),
            );
          }),
        ),
        Column(
          children: [
            DropdownButton(
              icon: Icon(
                Icons.home,
                color: Colors.red.shade400,
                size: 20.0,
              ),
              items: cities.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: selectedCity,
              onChanged: (String? value) {
                setState(() {
                  if (value != null) {
                    selectedCity = value;
                  }
                });
              },
            ),
          ],
        ),
        TabBar(
            controller: tabController,
            indicatorColor: Colors.red.shade400,
            labelColor: Colors.red.shade400,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                TextStyle(fontSize: 17.0, fontWeight: FontWeight.w200),
            tabs: [
              Tab(
                child: Text("Basic Food"),
              ),
              Tab(
                child: Text("Sweets"),
              ),
              Tab(
                child: Text("Beverages"),
              ),
              Tab(
                child: Text("Cleaning"),
              ),
              Tab(
                child: Text("Personal Care"),
              ),
            ]),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Category(
                category: "Basic Food",
              ),
              Category(
                category: "Sweets",
              ),
              Category(
                category: "Beverages",
              ),
              Category(
                category: "Cleaning",
              ),
              Category(
                category: "Personal Care",
              ),
            ],
          ),
        )
      ],
    );
  }
}
