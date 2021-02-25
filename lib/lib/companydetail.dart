import 'package:flutter/material.dart';

class CompanyDetail extends StatelessWidget{
  final datas;

  const CompanyDetail({Key key,@required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(datas["Company Name"]),
      backgroundColor: Colors.teal,
      elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
            Hero(
            tag: datas["Symbol"],
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius:100.0,
                    backgroundImage: NetworkImage(datas["Image"],
                  ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,
            ),
                Text("Company Name: ${datas["Company Name"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Symbol: ${datas["Symbol"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.0,
                ),
                Text("Current Price: ${datas["Current Price"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.0,
                ),
                Text("52 Week High: ${datas["52 week high"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.0,
                ),
                Text("52 Week Low: ${datas["52 week low"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.0,
                ),
                Text("Sector/Industry: ${datas["Sector/Industry"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Market Cap: ${datas["Market Cap"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Promoter Holding: ${datas["Promoter Holding"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),

                Text("PE: ${datas["PE"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Industry PE: ${datas["Industry PE"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Compound Sales Growth: ${datas["Compound Sales Growth"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Compound Profit Growth: ${datas["Compound Profit Growth"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Return on Equity: ${datas["Return on Equity"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Dividend Yield: ${datas["Dividend Yield"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("PEG Ratio: ${datas["PEG Ratio"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Current Ratio: ${datas["Current Ratio"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Debt Equity Ratio: ${datas["Debt Equity Ratio"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Outperformance to Index ( 10 years ): ${datas["Outperformance to Index ( 10 years )"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Stock Beta: ${datas["Stock Beta"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Support Level 1: ${datas["Support Level 1"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Support Level 2: ${datas["Support Level 2"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Resistance 1: ${datas["Resistance 1"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Resistance 2: ${datas["Resistance 2"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),

                Text("Company Website: ${datas["Company Website"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.0,
                ),
                Text("Chart: ${datas["Chart"]} ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}