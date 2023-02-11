import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
        //shows what appears on homescreen
        home: Home()),
  );
}

//cause hot reload as it detects change in the widget called on home:
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //top bar
        appBar: AppBar(
          title: Text("Fazool Tareen App"),
          backgroundColor: Colors.purple[900],
          centerTitle: true,
        ),
        //main content
        //when you don't need a margin and color, just use padding widget instead of container widget
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Expanded means to expand to all available space
            Expanded(
              //divide the spaces in all flexes sum and give (flex:number) number parts to it
              flex: 4,
              child: Container(
                color: Colors.cyan,
                padding: EdgeInsets.all(20.0),
                child: Text('container 1 da text!'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(30.0),
                child: Text('container 2 da text!'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(40.0),
                child: Text('container 3 da text!'),
              ),
            ),
          ],
        )
        /*Padding(
          child: Text('Teri maa ka bholaapan'),
          padding: EdgeInsets.all(100.0),
        )*/
        /*Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 40.0, 25.0),
        margin: EdgeInsets.all(50.0),
        color: Colors.grey[400],
        child: Text('Dhyaan kro!'),
      ),*/
        /*Center(
          //we want to use widget in a widget, we use child property to define it
          child: ElevatedButton.icon(
        onPressed: () {
          print('mail sent!');
        },
        icon: Icon(
          Icons.mail,
        ),
        label: Text(
          'Mail Me!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontFamily: 'Pacifico',
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.amber,
          // Text Color
        ),
      )
          //child: Image.asset('assets/photo-3.jpg'),
          /* 
          Text(
          "Idhar dhyaan kro!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontFamily: 'Pacifico',
          ),
        ),
        */
          ),
        */
        //floatingActionButton: FloatingActionButton(
        //child: Text("CLICK"),
        //),
        );
  }
}
