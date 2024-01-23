
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suguna Demo Flutter App',
      home: HomeState(),
    );
  }

}

class HomeState extends StatefulWidget{
  
    const HomeState({super.key});
    @override
    State<HomeState> createState() {
      return _MyHomeDrawer();
    }
}

class _MyHomeDrawer extends State<HomeState>
{

  String selectedPage = '';

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

              // User Accounts Header
              const UserAccountsDrawerHeader(accountName: Text('Manibharathi'), 
              accountEmail: Text('manibharathir@sugunafoods.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("M",
                style: TextStyle(fontSize: 40.0),
                ),
              ),
              ),
              // Normal Header
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.lightBlueAccent
              //   ),
              //   child: Text('SFPL')

              //   ),
                ListTile(
                  title: const Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: (){
                      //Close the drawer
                      Navigator.pop(context);
                       setState(() {
                         selectedPage = 'HOME';
                       });
                  },
                ),

                ListTile(
                  title: const Text('About us'),
                  leading: Icon(Icons.add_moderator_outlined),
                  onTap: (){
                      Navigator.pop(context);
                       setState(() {
                         selectedPage = 'ABOUT';
                       });
                  },
                )
            ],
          ),
        ),
        body: Center(
          child: (selectedPage == 'HOME')?HomeWidget1():AboutWidget1(),
        ),
      );


    
  }
}

class HomeWidget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is Widget1 Home Page')),
    );
  }

}

class AboutWidget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(child: Text('This is About Widget1')),
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

              // User Accounts Header
              const UserAccountsDrawerHeader(accountName: Text('Manibharathi'), 
              accountEmail: Text('manibharathir@sugunafoods.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("M",
                style: TextStyle(fontSize: 40.0),
                ),
              ),
              ),
              // Normal Header
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.lightBlueAccent
              //   ),
              //   child: Text('SFPL')

              //   ),
                ListTile(
                  title: const Text('Home'),
                  leading: Icon(Icons.home),
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
                  leading: Icon(Icons.add_moderator_outlined),
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

