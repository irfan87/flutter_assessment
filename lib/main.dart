import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.amber,
        ),
        canvasColor: Colors.amber,
      ),
      home: Book(),
    );
  }
}

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  Widget handbagImage = Container(
    height: 120.0,
    width: 120.0,
    child: Image.asset("images/handbag_one.jpg"),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black45,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maxi Handbag",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: handbagImage,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        onClosing: () {},
        builder: (context) {
          return ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
            child: Container(
              width: size.width,
              height: size.height / 2.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 30.0,
                  right: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text("Grained Calfskin and Gold-Tone Metal Black"),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text("RM 3,000"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
