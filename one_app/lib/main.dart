import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome()
    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        backgroundColor: Colors.lightBlue[500],
        appBar: AppBar(
          title: Text('This is Flutter app'),
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),
          backgroundColor: Colors.indigo[400],
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.dangerous))],
        ),
        body:ListView(
children: [
  ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OtherPage()),
            );
          },
        ),
  Container(
  height: 300,
color:Colors.cyan,  ),
  Container(
  height: 300,
color:Colors.cyan[300],

  ),
    Container(
  height: 300,
color:Colors.cyan[400],

  ),
  Expanded(
       flex:3,
    child: Container(

  height: 300,
color:Colors.greenAccent[400],

  ))
],
        )
      );
  }
  }
  
class OtherPage extends StatelessWidget {
  const OtherPage ({super.key});

  @override
  Widget build(BuildContext context) {
   return Center(
      child: ElevatedButton(
        child: Text("Foo"),
         onPressed: () {
            Navigator.pop(context);
          },
      ),
    );
  }
  }

  
    