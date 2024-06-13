import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kavinkumar.jpg'),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Kavin Kumar S',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Find Photos',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Gallery',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildPadding('assets/images/mypic1.jpg'),
                    buildPadding('assets/images/mypic2.jpg'),
                    buildPadding('assets/images/mypic3.jpg'),
                    buildPadding('assets/images/mypic4.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Friends Pics',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildpadding_pics('assets/images/frnds1.jpg'),
                    buildpadding_pics('assets/images/frnds2.jpg'),
                    buildpadding_pics('assets/images/frnds3.jpg'),
                    buildpadding_pics('assets/images/frnds4.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildpadding_pics(image) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: Offset(4.0, 5.0),
                blurRadius: 6.0,
              ),
            ]),
      ),
    );
  }

  Padding buildPadding(image) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: Offset(4.0, 5.0),
                blurRadius: 6.0,
              ),
            ]),
      ),
    );
  }
}
