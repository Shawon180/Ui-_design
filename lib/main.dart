import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: NetworkImage('https://cdn.pixabay.com/photo/2017/11/11/21/55/freedom-2940655_960_720.jpg'),
height: double.infinity,
            fit: BoxFit.cover,
      ),
          Positioned(
              bottom: 20,left: 20,
              child: Container(
                /*decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.blue,
                    ]
                  ),
                ),*/
                width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text('25 Amazing Colorful Photoghraphy ',style: TextStyle(
                  color: Colors.white,
                 fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),),
                Row(
                  children: [
                    ActionChip(
                      onPressed: (){},
label: Text('Photography',style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white,
),),
backgroundColor: Colors.red,),
SizedBox(
  width: 20,
),
                    ActionChip(
                      onPressed: (){},
                      label: Text('Color',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      backgroundColor: Colors.blueAccent,
                    ),
                  ],
                )
              ],
            ),
          )),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },

        backgroundColor: Colors.red,
        child: const Icon(Icons.favorite),
      ),
    );

  }
}
