
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suguna Demo Flutter App',
      home: Home(),
    );
  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Navigation Drawer',style:TextStyle(
            color: Colors.white
          )),
          backgroundColor: Colors.blue.shade900,
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent
                ),
                child: Text('SFPL')

                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: (){
                      //Close the drawer
                      Navigator.pop(context);
                       Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => MyHome())
                            );
                  },
                ),

                ListTile(
                  title: const Text('About us'),
                  onTap: (){
                      Navigator.pop(context);
                       Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => About())
                            );
                  },
                )
            ],
          ),
        ),
      );
    
  }

}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
          title: Text('Home',style:TextStyle(
            color: Colors.white
          )),
          backgroundColor: Colors.blue.shade900,
        ),
      body: Center(
        child:Text('This is Home Page', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ))
      ),
    );
  }

}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
          title: Text('About',style:TextStyle(
            color: Colors.white
          )),
          backgroundColor: Colors.blue.shade900,
        ),
      body: Center(
        child:Text('This is About Page', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ))
      ),
    );
  }

}

