import 'package:flutter/material.dart';

void main()  => runApp(MaterialApp(
    home: Home() ,
  ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 51;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja Code"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,   //to remove shade
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  setState(() {
          counter += 1;
        });},
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add, color: Colors.amberAccent,),
        hoverColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,          //NOOOOOOOOO
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("aset/img02.jpg"),
                radius: 130,
              ),
            ),
            Divider(height: 30, color: Colors.grey,),
            Text("NAME",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text("Amazon Jungle",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text("AREA",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text("$counter",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.email_rounded, color: Colors.grey[500], ),
                SizedBox(width: 10,),
                Text("visitamazon.com.pk", style: TextStyle(color: Colors.grey),),
              ],
            ),

          ],

        ),
      )

    );
  }
}
