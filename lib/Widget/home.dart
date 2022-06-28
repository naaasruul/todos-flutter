import 'package:flutter/material.dart';
import 'package:todos/Widget/add.dart';
import 'package:todos/Widget/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todos = [
    {"name": "Dinner", "place": "Kedai makan", "desc": "bawah 100"},
    {"name": "main game", "place": "bengkel", "desc": "sampai 12 je"},
    {"name": "nyanyi", "place": "sekolah", "desc": "sampai esok"},
    {"name": "masak", "place": "Office", "desc": "sedap"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPage()));
            }, icon: Icon(Icons.add))
          ],
          backgroundColor: Colors.white, // appbar color.
          foregroundColor: Colors.black, // appbar text color.
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            // how many rows are there?
            itemCount: todos.length, // !important!
            // what to show in every row
            itemBuilder: (BuildContext context, int index)  {
              return ListTile(
      title:Text(todos[index]["name"]!),
    subtitle:Text(todos[index]["place"]!),
      trailing: Icon(Icons.chevron_right),
                onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                },
    );
            }
        )
    );
  }
}
