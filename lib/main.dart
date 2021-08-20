  import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Display User Input',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: UserInput(),
    );
  }
}

class UserInput extends StatefulWidget {
  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
   final myController = TextEditingController();
  @override
   void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Display User Input'),
      ),
          body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/download.png', height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: myController,
                 decoration: InputDecoration(  
      border: InputBorder.none,  
      // labelText: 'Enter Name',  
      hintText: 'Enter Your Name'  
  ),  
              ),
            ),
            RaisedButton(onPressed: (){
              showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
            }, child: Text('Press to view your name'))
          ],
        ),
      ),
    );
  }
}