
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

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //return _HomeState();
    return _myHomeState();
  }

}

// ignore: camel_case_types
class _myHomeState extends State<Home>{
  final titleController = TextEditingController();
  final passwordController = TextEditingController();
  String text = "No text is available";
  String password = "No password is available";

  void _setText(){
    setState(() {
        text = titleController.text;
    });
  }

  void _setPassword(){
    setState(() {
        password = passwordController.text;
    });
  }

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Center(
              child: Column(
                children: [
                  Image.network('https://sugunafoods.com/wp-content/uploads/2022/09/Suguna-Foods-Brand-Logo.png'),
                  Image.asset('assets/logo.png',
                    height: 100,
                    scale: 2.5,
                    opacity:
                        const AlwaysStoppedAnimation<double>(9)
                  ),
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
                      controller: titleController,
                  ),
                  ),
        
                  Padding(padding: EdgeInsets.all(16),
                    child: TextField(
                      obscureText: true,  
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password'
                      ),
                      controller: passwordController,
        
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
        
                            //_setText();
                            //_setPassword();
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => AboutPage(text: titleController.text,password:passwordController.text))
                            );
        
                        }, child: Text('Sign In', style: TextStyle(
                          color: Colors.white,
                        ),)),
                  ),
        
                  Padding(padding: EdgeInsets.all(16),
                    child: Text('Forgot password?'),
                  ),
        
                  Padding(padding: EdgeInsets.all(16),
                    child: Text(text),
                  ),
        
                  Padding(padding: EdgeInsets.all(16),
                    child: Text(password),
                  ),
        
                ],
              ),
          ),
        ),
      ),
    );
  }
  
}

/**
 * One way to use state
 */
class _HomeState extends State<Home>{

  late String title;
  String text = "No text is available";

  void _setText(){
    setState(() {
        text = title;
    });
  }

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
                    onChanged: (value) => title = value,
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

                          _setText();
                          
                          // Navigator.push(context, 
                          // MaterialPageRoute(builder: (context) => AboutPage())
                          // );

                      }, child: Text('Sign In', style: TextStyle(
                        color: Colors.white,
                      ),)),
                ),

                Padding(padding: EdgeInsets.all(16),
                  child: Text('Forgot password?'),
                ),

                Padding(padding: EdgeInsets.all(16),
                  child: Text(text),
                ),

              ],
            ),
        ),
      ),
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
                          MaterialPageRoute(builder: (context) => AboutPage(text: "Testing",password: "Testing"))
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
  late final String text;
  late final String password;
  AboutPage({super.key,required this.text,required this.password});
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
            Text("$text-$password"),
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