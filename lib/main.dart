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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 77, 15)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dio Dharmaesa 053'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: 
      // Container(
      //   width: 200,
      //   height: 200,
      //   padding: const EdgeInsets.all(14),
      //   margin: const EdgeInsets.all(14),
      //   decoration: BoxDecoration(
      //     color: Colors.black,
      //     border: Border.all(
      //       width: 4,
      //       color: Colors.yellowAccent,
      //     )
      //   ),
      //   alignment: Alignment.bottomLeft,
      //   child: const Center(
      //     child: Text("Hello World!",
      //     style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.redAccent
      //       ),
      //     )
      //   ),
      // ) 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.redAccent,
          ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellowAccent,
          ),
          Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
          )
        ],
      )
    );
  }
}
