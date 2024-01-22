import 'package:ecommerce_pro/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catigories = [
    {
      "imagename": "assets/images/sh11.jpg",
      "title": "MEN",
    },
    {
      "imagename": "assets/images/sh2.jpg",
      "title": "WOMEN",
    },
    {
      "imagename": "assets/images/sh18.jpg",
      "title": "ELECTRONICS",
    },
    {
      "imagename": "assets/images/sh14.jpg",
      "title": "HOMELY",
    },
    {
      "imagename": "assets/images/sh5.jpg",
      "title": "accsesories",
    },
  ];

  List items = [
    {
      "imagename1": 'assets/images/a1.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a2.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a3.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a4.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a5.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a8.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a6.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
    {
      "imagename1": 'assets/images/a7.jpg',
      "title": 'addidas',
      "subtitle": 'descriptions',
      "price": '13\$',
    },
  ];
  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectindex = val;
            });
          },
          currentIndex: selectindex,
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 40,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 40,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 40,
                ),
                label: ""),
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Color.fromARGB(255, 236, 236, 236),
                      filled: true),
                )),
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    )),
              ],
            ),
            Container(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 120,
              child: ListView.builder(
                itemCount: catigories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        //width: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          catigories[index]['imagename'],
                          height: 55,
                          width: 55,
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        catigories[index]['title'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 102, 101, 101)),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            GridView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsPage(data: items[index])));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 150,
                          color: Colors.white,
                          child: Image.asset(
                            items[index]?["imagename1"],
                            fit: BoxFit.cover,
                            height: 130,
                          ),
                        ),
                        Text(
                          items[index]["title"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          items[index]["subtitle"],
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Container(
                          height: 20,
                        ),
                        Text(
                          items[index]["price"],
                          style: const TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
