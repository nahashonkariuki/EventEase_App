import 'package:flutter/material.dart';
import './splash.dart';
import './login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management system',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Events"),
      ),
      body:ListView(
        children: [
          // Search bar
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search events',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          // Featured events section

          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured events',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Featured events list
                Container(
                  height: 325.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Featured event cards
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/img.png'),
                              Text('Bicu Lounge'),
                              Text('Performers Night'),
                              Text('Fri, Feb 10, 6:00 PM CAT'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/img_1.png'),
                              Text('Lavana'),
                              Text('Friday Night Live'),
                              Text('Fri, Feb 10, 8:00 PM CAT'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/img_2.png'),
                              Text('Sofar Kigali'),
                              Text('Secret Location'),
                              Text('Sat, Feb 11, 3:30 PM  CAT'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/img_3.png'),
                              Text('Plant & Seed Swap'),
                              Text(' Casa Keza'),
                              Text('Sat, Feb 11, 2:00 PM CAT'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Event categories section
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Category list
                Container(
                  height: 80.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Category cards
                      Container(
                        width: 80.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Center(
                            child: Text('Music'),
                          ),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Center(
                            child: Text('Sports'),
                          ),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Center(
                            child: Text('Food and drinks'),
                          ),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        margin: EdgeInsets.only(right: 8.0),
                        child: Card(
                          child: Center(
                            child: Text('Outdoor'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Upcoming events section
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Upcoming events',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Upcoming events list
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        // Event cards
                        Card(
                          child: Column(
                            children: [
                              Image.network('https://via.placeholder.com/200x100'),
                              Text('Event name'),
                              Text('Event date'),
                              Text('Event location'),
                            ],
                          ),
                        ),
                        // Add more events here
                      ],
                    ),
                  ),

              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },child: const Text("Login"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

