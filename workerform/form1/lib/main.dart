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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {  },),
    
        title: Text('Fill this form Negga'),
      ),
      body: 
      SingleChildScrollView(
       child: Center( 
        child: Container(
          width: 300,
          
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
              ),
              Container(height: 50,),
              TextField(
                decoration: InputDecoration(
                  
                  focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink,
                    width: 2
                    )

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.purple
                    )
                  ),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Name",
                  
                  helperText: "Name can't be empty",
                ),
                
              ),
              Container(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Kneel peasant",
                  focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink,
                    width: 2
                    )

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.purple
                    )
                  ),
                  prefixText: "",
                ),
                
              ),
              Container(height: 20,),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "About",
                  focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink,
                    width: 2
                    )

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.purple
                    )
                  ),
                  prefixText: "",
                ),
                
              ),
            ],
          )
          ),
          ),
            
          
        ),
      );
  }
}
