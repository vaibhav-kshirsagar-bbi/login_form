import 'package:flutter/material.dart';
import 'package:task/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      home: const MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController? userName= TextEditingController();
  TextEditingController? userPassword= TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blueAccent,
              Colors.lightBlueAccent,
            ],
          )
      ),

      child: Container(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             SizedBox(
               height: MediaQuery.of(context).size.height/1.8,
               width: MediaQuery.of(context).size.width/1.2,

               child: Card(

                 shadowColor: Colors.black12,
                 elevation: 10,
                 shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                     side: BorderSide.none
                 ),

                 color: Colors.white,

                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       SizedBox(height: 30,),

                       Center(
                         child: Text(
                           "Sign in",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold,

                           ),
                         ),
                       ),

                       SizedBox(height: 50,),

                       Text(
                         "Email Address  *",
                         style: TextStyle(
                             color: Colors.black,

                         ),
                       ),
                       SizedBox(height: 10,),
                       TextFormField(
                         controller: userName,
                           onChanged: (value){

                             setState(() {});

                           },
                           decoration:  InputDecoration(
                             hintText: "Enter Email",
                             errorText: RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$').hasMatch(userName!.text.toString()) || userName!.text.toString()==""? null : "Enter valid Email" ,
                             hintStyle: TextStyle(

                             ),
                             border: OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                 const Radius.circular(20.0),
                               ),
                               borderSide: BorderSide(
                                 width: 1,
                                 style: BorderStyle.solid,
                               ),
                             ),
                           )
                       ),


                       SizedBox(height: 20,),

                       Text(
                         "Password  *",
                         style: TextStyle(
                           color: Colors.black,

                         ),
                       ),
                       SizedBox(height: 10,),
                       TextFormField(
                           controller: userPassword,
                           onChanged: (value){
                             setState(() {});
                           },
                           obscureText: true,
                           decoration:  InputDecoration(
                             hintText: "Enter Password",
                             errorText: RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(userPassword!.text.toString()) || userPassword!.text.toString()=="" ? null : "password must contain 1 lower,upper,special\nand numeric",

                             border: OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                 const Radius.circular(20.0),
                               ),
                               borderSide: BorderSide(
                                 width: 1,
                                 style: BorderStyle.solid,
                               ),
                             ),
                           )
                       ),

                       SizedBox(height: 40,),

                       Center(
                         child: SizedBox(

                           width: MediaQuery.of(context).size.width,

                           child: Card(
                             shape:RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20)),
                             color: Colors.lightBlueAccent,
                             child: TextButton(
                                 onPressed: (){},
                                 child: Text(
                                     'SIGN IN',
                                      style: TextxtStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),
                                 )
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      );
  }
}
