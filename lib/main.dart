import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
            /*  Colors.orange.shade50,
              Colors.purple.shade50,
              Colors.brown.shade50 */
              Color(0xffffecd2),
              Color(0xfffcb69f)

            ] ,
            begin: FractionalOffset(1.0,0.5),
            end: FractionalOffset(0.0,0.5),
            stops: [
              0.0,
              0.1,
            ]
          )
        ),
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('BMI',style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 21,),
                  TextField(
                      decoration: InputDecoration(
                        label: Text(' Enter Your Weight'),
                        prefixIcon:Icon(Icons.line_weight),
                      ),
                  ),
                  SizedBox(height: 11,),
                  TextField(
                      decoration: InputDecoration(
                        label: Text(' Enter Your Height in Feet'),
                        prefixIcon:Icon(Icons.line_weight),
                      ),
                  ),
                  SizedBox(height: 11,),
                  TextField(
                      decoration: InputDecoration(
                        label: Text(' Enter Your Height in Inch'),
                        prefixIcon:Icon(Icons.line_weight),
                      ),
                  ),
                  SizedBox(height: 21,),

                  ElevatedButton(onPressed: (){



                  }, child: Text('Submit'))

                ],

              ),
            ),
          ),
        ),
      )
    );
  }
}
