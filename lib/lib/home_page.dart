import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'companydetail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  var api = "https://v1.nocodeapi.com/nimish/google_sheets/ulLokGsBaRYQBxAt?tabId=Nimish";
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
                    tag: datas["Symbol"],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: CircleAvatar(backgroundImage: NetworkImage(datas["Image"]?? "https://cidco-smartcity.niua.org/no-image-found/"
                        ),
                        ),
                      ),
                    ),
                ),
                title: Text("${datas["Company Name"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                ),
                ),

                subtitle: Text("${datas["Symbol"]} ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetail(datas: datas),
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