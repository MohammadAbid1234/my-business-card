import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          title: Text('Abid Business Card'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers all elements vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centers all elements vertically

            children: [

              Align(

                alignment: Alignment.topCenter,


                child: Transform.scale(



                  scale: 1.2,  // Scale
                  // the image down to 90% of its original size
                  child: ClipOval(


                    child: Image.asset(


                      'images/abid.JPG',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                // ),
              ),
              ),

              Container(
                padding: EdgeInsets.only(top:25.0,bottom: 0.0), // Add padding around the text
                child: Text(
                  'Mohmmad Abid',
                  style: TextStyle(
                    fontFamily: 'pacifico',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 0.0, bottom: 10.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,

                width: 200,

                child: Divider(
                   color:Colors.red

                ),
              ),
              Card(

                elevation: 4.0, // Adds shadow, adjust elevation for more or less shadow
                margin: EdgeInsets.only(top: 10.0, bottom: 0.0),

                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 300,// Correct padding
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text('192813988939999'),
                    ],
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                width: 300,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10), // Correct margin
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text('abidformuli99@gmail.com'),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
