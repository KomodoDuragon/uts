import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const List<Color> colors = [
  Colors.black,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.amber,
  Colors.blueGrey,
  Colors.blue,
  Colors.blueAccent,
  Colors.pink,
  Colors.teal,
  Colors.purple,
  Colors.indigo
];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Grid View- UTS Dedy Kurniawan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List alphabet = [
    "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dedy Kurniawan-191011402152"),
          ),
          body: GridView(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: <Widget>[
              GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(20),
                children: List.generate(alphabet.length, (index) {
                  return Container(
                    height: 100,
                    child: Card(
                      child: Center(
                          child: Text(alphabet[index],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20))),
                        color: colors[index],
                    ),
                  );
                }),
              ),
            ],
          )),
    );
  }
}
