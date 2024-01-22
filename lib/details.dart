import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  const DetailsPage({super.key, this.data});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.shop_outlined,
            color: Colors.black,
          ),
          Container(
            width: 4,
          ),
          const Text(
            "Shaden",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            width: 7,
          ),
          const Text(
            "Shopping",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ]),
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.asset(
            widget.data['imagename1'],
            fit: BoxFit.fill,
          ),
          Container(
            height: 20,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(
              widget.data['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(
              widget.data!['subtitle']!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(
              widget.data!['price']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color:",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  //border: Border.all(color: Colors.orange),
                ),
              ),
              const SizedBox(width: 10),
              const Text("Grey"),
              const SizedBox(width: 20),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              const SizedBox(width: 10),
              const Text("Black"),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Size:      34 , 35 , 40 , 41 ",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            height: 30,
            width: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Count:",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            i++;
                          });
                        },
                        icon: const Icon(Icons.add)),
                    Text("$i"),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            i--;
                          });
                        },
                        icon: const Icon(Icons.remove)),
                  ],
                )
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
            child: MaterialButton(
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text("Add to cart"),
            ),
          ),
        ],
      ),
    );
  }
}
