import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'stockabulary_terms.dart';


class Stockabulary extends StatefulWidget {
  @override
  _StockabularyState createState() => _StockabularyState();
}

class _StockabularyState extends State<Stockabulary>{

  var api = "https://v1.nocodeapi.com/nimish/google_sheets/HvLQvWbyckNcBWTB?tabId=Sheet1";
  var res, data;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData()async{
    res=await http.get(api);
    data = jsonDecode(res.body)["data"];
    print(data.toString());
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: res!=null? ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            var datas= data[index];
            return ListTile(
              leading: Hero(
                tag: datas["Term"],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: CircleAvatar(backgroundImage: NetworkImage(datas["Image"]?? "https://cidco-smartcity.niua.org/no-image-found/"
                    ),
                    ),
                  ),
                ),
              ),
              title: Text("${datas["Term"]} ",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),


              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Stockabulary_Terms(datas: datas),
                ),
                );
              },
            );
          },
        ):CircularProgressIndicator(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}