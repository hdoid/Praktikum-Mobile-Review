import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 146, 89, 4)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sinau Listview (25 Sept 2024)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = ["Bike", "Boat", "Bus", "Car", "Truck", "Airplane", "Train", "Submarine"];

  @override
  Widget build(BuildContext context) {

    List icons = [
      Icons.directions_bike,
      Icons.directions_boat, 
      Icons.directions_bus,
      Icons.directions_car,
      Icons.fire_truck,
      Icons.airplanemode_active,
      Icons.train,
      Icons.water
      ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
              onTap:() {
                setState(() {
                  titles.removeAt(index);
                });
              },
            )
          );
        }
      ),

      //   children: const [
      //     ListTile(
      //       leading: Icon(Icons.sunny),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.brightness_3),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.star),
      //       title: Text("Star"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("ikn.jpeg"),
      //       ),
      //       title: Text("IKN"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     )
      //   ],
      // ),

  // body: GridView(
  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //   crossAxisCount: 3,
  //   ),
  //     children: [
  //       Container(  
  //         width: 100,
  //         height: 250,
  //         margin: const EdgeInsets.only(bottom: 10),
  //         color: Colors.red,
  //         child: const Image(image: AssetImage("ikn.jpeg"))
  //       ),
  //       Container(
  //         width: 100,
  //         height: 250,
  //         margin: const EdgeInsets.only(bottom: 10),
  //         color: Colors.blue,
  //       ),
  //       ],
  //     ),
    );
  }
}
