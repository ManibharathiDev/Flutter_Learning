
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suguna Demo Flutter App',
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text('Suguna Demo app',
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Center(
            child: Column(
              children: [
                Text("Login", style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),),

                Padding(padding: EdgeInsets.all(16),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your username'
                    ),
                ),
                ),

                Padding(padding: EdgeInsets.all(16),
                  child: TextField(
                    obscureText: true,  
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your password'
                    ),
                ),
                ),

                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade900,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                        onPressed: ()
                        {
                          
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => AboutPage())
                          );

                      }, child: Text('Sign In', style: TextStyle(
                        color: Colors.white,
                      ),)),
                ),

                Padding(padding: EdgeInsets.all(16),
                  child: Text('Forgot password?'),
                )

              ],
            ),
        ),
      ),
    );
  }

}

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text('About Page', style: TextStyle(
          color: Colors.white
        )),
        backgroundColor: Colors.red.shade900,
        bottomOpacity: double.infinity,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About Page'),
            TextButton(onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ContactPage())
              );
            }, child: Text('Click to move next page'))
        ],),
      )
    );
  }

}

class ContactPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text('Contact Us', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red.shade900,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text('SFPL, Sixth Floor, Jaya Enclave, Avinachi Road',
                        textAlign: TextAlign.center,
                         style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                      )),
                    ),
                  ),
                )
              ]),
        ),
      );
  }

}