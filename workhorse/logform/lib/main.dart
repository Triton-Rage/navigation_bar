import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worker Registration',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade600),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Worker Registration Form'),
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
  
  _MyHomePageState(){
    _selectedVal = jobTypeList[0];
  }
 final jobTypeList = ["Cleaner","Cook","Carpenter","Plumber","Electrician"];
 String? _selectedVal = "";

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
      
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: ListView(
            children: <Widget>[
              imageProfile(),
              const SizedBox(
                height: 40,
              ),
              nameTextfield(),
            const SizedBox(
              height: 20,
            ),
              jobTextfield(),
               const SizedBox(
              height: 20,
            ),
              aboutTextfield(),
            ],
          ),
        ),
       
      ),
    );
  }
  Widget imageProfile(){
    return Center(
      child: Stack(
        children: <Widget>[
          const CircleAvatar(
            radius: 70,
          ),
          Positioned(bottom: 5,right: 60,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(context: context, 
              builder: ((builder) => bottomSheet()),
              );
            },
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          ),
        ],
      ),
    );
  }
  Widget bottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(children: <Widget>[
        const Text('Choose Profile pic',
        style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton.icon(
             icon: const Icon(Icons.camera),
              onPressed: () {
                
              },
              label: const Text("Camera"),
            ),
                        TextButton.icon(
             icon: const Icon(Icons.image),
              onPressed: () {
                
              },
              label: const Text("Gallery"),
            ),
          ],
        )
      ],
      ),
    );
 }
  Widget nameTextfield(){
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
          )
        ),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
            width: 2,
          )
        ),
        prefixIcon: Icon(Icons.person, color: Colors.pink,),
        labelText: 'Name',
        helperText: 'Name cant be empty'
      ),
    );
  }
    Widget jobTextfield(){
      
    return DropdownButtonFormField(
      value: _selectedVal,
      items: jobTypeList.map(
      (e) => DropdownMenuItem(child: Text(e), value: e,)
      
    ).toList(),
       onChanged: (val){
        setState(() {
          _selectedVal = val as String;
        });
       },
       icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.pink,
       ),
       dropdownColor: Colors.white,
       decoration: const InputDecoration(
        labelText: "Select Job Type",
        helperText: "Job cant be Empty",
        prefixIcon: Icon(
          Icons.work_history,
          color: Colors.pink,
        ),
        border: OutlineInputBorder(),
               ),
       );
    
  }
    Widget aboutTextfield(){
    return TextFormField(
      maxLines: 4,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
          )
        ),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink,
            width: 2,
          )
        ),
       
        labelText: 'About',
        helperText: 'skip if u want'
      ),
    );
  }
}
