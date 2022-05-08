import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class nightchanges extends StatefulWidget {
    nightchanges({Key? key}) : super(key: key);

  @override
    State<nightchanges> createState() => _nightchangesState();
}

class _nightchangesState extends State<nightchanges> {
  var url = 'https://api.publicapis.org/entries';
   getdata()async{
    var responce = await http.get(Uri.parse(url));
    var data = json.decode(responce.body);
    return data;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getdata(),
        builder:(context,dynamic snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data['entries'].length,
              itemBuilder: (context,index){
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("${snapshot.data['entries'][index]['API']}"),
                    subtitle: Text("${snapshot.data['entries'][index]['Description']}"),
                  ),
                );
              });
          }
           else{
                    return Center(child: CircularProgressIndicator(),);
                }
        } ),
    );
  }
}