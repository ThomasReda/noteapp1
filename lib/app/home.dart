import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Home")),
    floatingActionButton: FloatingActionButton(onPressed: (){},
    child: const Icon(Icons.add),
    ),
    body: Container(
      padding: const EdgeInsets.all(10),
      child: ListView(children: [
       InkWell(
        onTap: (){},
         child: Card(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
         Expanded(
           flex: 1,
           child: Image.asset("assets/images/profile.png" , height: 100, width: 100, )),
         const Expanded(
           flex: 2,
           child: ListTile(
           title: Text("title note"),
           subtitle: Text("content note") ,
         ))
         
           ],),
         ),
       )
    
      ]),
    ),

    );
  }
}